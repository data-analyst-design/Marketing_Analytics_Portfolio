import pandas as pd
import pyodbc
import nltk
from nltk.sentiment.vader import SentimentIntensityAnalyzer

# Download the VADER lexicon for sentiment analysis if not already present
nltk.download('vader_lexicon')

# Define a function to fetch data from SQL Database using a SQL Query
def fetch_data_from_sql():

    # Define the connection string with parameters for the database connection
    conn_string = (
        "DRIVER={ODBC Driver 18 for SQL Server};"
        "SERVER=localhost;"
        "DATABASE=PortfolioProject_MarketingAnalytics;"
        "Trusted_Connection=yes;"
        "Encrypt=yes;"
        "TrustServerCertificate=yes;"
    )
    # Establish the connection to the database
    conn=pyodbc.connect(conn_string)

    # SQL query to fetch the customer reviews data
    query = "SELECT ReviewID, CustomerID, ProductID, ReviewDate, Rating, ReviewText FROM dbo.customer_reviews" 

    # Execute the query and fetch the data into a dataframe
    df = pd.read_sql(query, conn)

    # Close the connection to free up resources
    conn.close()

    # Return the fetched data as a dataframe
    return df

# Fetch customer reviews data from the SQL database
customer_reviews_df = fetch_data_from_sql()
print(customer_reviews_df.head(10))

# Initialize the VADER Sentiment Intensity Analyzer
sia = SentimentIntensityAnalyzer()

# Define a function to calculate the sentiment score of each review
def calculate_sentiment(review):
    sentiment = sia.polarity_scores(review)
    return sentiment['compound']

# Define a function to classify the sentiment scores
def classify_sentiment(score, rating):
    if score >=0.05: # Positive Sentiment
        if rating >=4: # Positive sentiment and high rating 
            return "Positive"
        elif rating == 3: # Positive sentiment but neutral rating
            return "Mixed Positive"
        else: # Positive sentiment but low rating 
            return "Mixed Negative"
    elif score <= -0.05: # Negative sentiment
        if rating <= 2: # Negative sentiment and low rating
            return "Negative"
        elif rating ==3: # Negative sentiment but neutral rating
            return "Mixed Negative"
        else: # Ngative sentiment but positive rating
            return "Mixed Positive"
    else: # Neutral sentiment
        if rating >=4: # Neutral sentiment and postive rating
            return "Positive"
        elif rating <=2: # Neutral sentiment and negative rating
            return "Negative"
        else: # Nautral sentiment and neutral rating
             return "Neutral"

# Define a function to bucket scores into text ranges        
def sentiment_bucket(score):
    if score >= 0.5:
        return "0.5 to 1.0" # Strongly positive sentiment
    elif 0.0 <= score < 0.5:
        return "0.0 to 0.49" # Mildly positive sentiment
    elif -0.5 <= score < 0.0:
        return "-0.49 to 0.0" # Mildly negative sentiment
    else:
        return "-1.0 to -0.5" # Strong positive sentiment
    
# Apply sentiment analysis to calculate scores for each review
customer_reviews_df['SentimentScore'] = customer_reviews_df['ReviewText'].apply(calculate_sentiment)

# Apply sentiment classification using both text and rating
customer_reviews_df['SentimentClassification'] = customer_reviews_df.apply(
    lambda row: classify_sentiment(row['SentimentScore'], row['Rating']), axis=1
)

# Apply Sentiment Buckets to categorize scores into defined ranges
customer_reviews_df['SentimentBucket'] = customer_reviews_df['SentimentScore'].apply(sentiment_bucket)

print(customer_reviews_df.head(10))

customer_reviews_df.to_csv('fact_customer_reviews_with_sentiment.csv', index=False)
