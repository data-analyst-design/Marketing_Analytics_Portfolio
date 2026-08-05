# 📊 Marketing Performance Analytics Dashboard

## Business Problem

Marketing teams collect vast amounts of data from website interactions, social media campaigns, and customer reviews. While this data is valuable, it often exists in separate systems, making it difficult to understand the complete customer journey or evaluate the effectiveness of marketing efforts.

Without a centralized analytics solution, decision-makers struggle to answer critical business questions such as:

- Where are customers dropping off before completing a purchase?
- Which marketing channels and content generate the highest engagement?
- Which products drive the highest conversion rates?
- How satisfied are customers with products and services?
- What improvements can increase conversions and enhance the customer experience?

This project demonstrates an end-to-end analytics workflow that transforms raw marketing data into actionable business insights using **SQL**, **Python**, and **Power BI**.

---

# 🎯 Business Objectives

The dashboard was developed to help stakeholders achieve the following goals:

### Increase Conversion Rates

- Identify where customers abandon the purchasing journey.
- Analyze conversion performance across products and time.
- Recommend strategies to improve website conversions.

### Enhance Customer Engagement

- Measure customer interaction with marketing campaigns.
- Determine which content types generate the highest engagement.
- Support data-driven content strategy decisions.

### Improve Customer Satisfaction

- Analyze customer feedback and sentiment.
- Identify recurring customer concerns.
- Recommend improvements to products and services.

---

# 🔄 Project Workflow

```text
Raw Marketing Data
        │
        ▼
SQL Data Cleaning & Transformation
        │
        ▼
Python Sentiment Analysis
        │
        ▼
Power BI Data Modeling
        │
        ▼
Interactive Dashboard Development
        │
        ▼
Business Insights & Recommendations
        │
        ▼
Stakeholder Presentation
```

---

# 🗄️ Step 1: Data Cleaning & Transformation (SQL)

Before any analysis could be performed, the raw marketing datasets were cleaned and transformed using SQL Server to ensure data quality and consistency.

### Tasks Performed

- Removed duplicate records
- Handled missing values
- Standardized inconsistent values
- Corrected data types
- Joined multiple datasets
- Validated data integrity
- Prepared clean datasets for reporting

### SQL Skills Demonstrated

- SELECT Statements
- LEFT JOIN
- CASE Statements
- Common Table Expressions (CTEs)
- Aggregate Functions
- Window Functions
- Data Cleaning
- Data Transformation

### Outcome

The result was a clean, structured dataset that served as the foundation for sentiment analysis and dashboard development.

---

# 🐍 Step 2: Advanced Sentiment Analysis (Python)

Customer reviews were analyzed using Python to gain deeper insights into customer opinions beyond numerical ratings.

### Process

The sentiment analysis workflow included:

- Importing review data from SQL Server
- Text preprocessing and cleaning
- Sentiment scoring using the VADER Sentiment Analyzer
- Classifying reviews as:
  - Positive
  - Neutral
  - Negative
- Comparing sentiment classifications against customer ratings for validation

### Python Libraries Used

- Pandas
- NLTK
- VADER Sentiment Analyzer
- PyODBC

### Insights Generated

- Overall sentiment distribution
- Positive and negative review trends
- Product-specific sentiment analysis
- Negative review hotspots
- Rating vs. Sentiment validation

The processed sentiment classifications were integrated back into Power BI to enrich the customer review analysis.

---

# 📈 Step 3: Interactive Power BI Dashboard

The cleaned SQL data and Python-generated sentiment analysis were modeled in Power BI to create an interactive dashboard that provides business stakeholders with a comprehensive view of marketing performance.

## Dashboard Pages

### Executive Overview

Provides a high-level summary of overall business performance through key performance indicators and trend analysis.

### Conversion Dashboard

Analyzes the customer purchase journey and identifies where customers abandon the buying process.

### Social Media Dashboard

Measures campaign performance using customer engagement metrics including views, clicks, and likes.

### Customer Reviews Dashboard

Evaluates customer satisfaction through ratings, sentiment analysis, and review trends.

---

# 📊 Key Performance Indicators (KPIs)

The dashboard tracks the following business metrics:

- Conversion Rate
- Customer Engagement
- Customer Feedback Score

> **Note:** Average Order Value (AOV) was not included because transaction revenue data was unavailable.

---

# 💡 Key Business Insights

## Conversion Analysis

- Conversion rates ranged between **8.48% and 11.58%**.
- The largest customer drop-off occurred between the **Click** and **Purchase** stages.
- Several products consistently outperformed others in conversion.
- Monthly conversion trends suggest seasonal purchasing behavior and campaign effectiveness.

### Business Insight

The primary opportunity for increasing revenue lies in optimizing the checkout process and reducing customer abandonment after product interaction.

---

## Customer Engagement Analysis

- Marketing campaigns generated millions of customer views.
- Clicks and likes were significantly lower than views, indicating strong awareness but relatively low engagement.
- Blog and Social Media content generally outperformed Video content.
- Engagement declined toward the end of each year.

### Business Insight

The business should invest more in high-performing content formats and improve call-to-action strategies to encourage greater customer interaction.

---

## Customer Feedback Analysis

- Average customer rating remained between **3.67 and 3.73**
- Most customers left 4- and 5-star reviews
- There's need for quality improvement for products with the highest negative reviews

### Business Insight

Improving product quality and addressing recurring customer complaints can significantly enhance customer satisfaction and increase repeat purchases.

---

# Step 4: Presenting Insights to Stakeholders

To communicate findings effectively, the dashboard insights were summarized in a stakeholder presentation focusing on actionable recommendations rather than technical details.

The presentation included:

- Marketing Performance Trends
- Conversion Funnel Analysis
- Customer Engagement Insights
- Customer Feedback Analysis
- Strategic Business Recommendations
- Expected Business Impact

The objective was to enable stakeholders to make informed, data-driven decisions to improve marketing performance and customer experience.

---

# Business Recommendations

## Improve Conversion Rates

- Simplify the checkout process
- Reduce customer friction during purchase
- Improve underperforming product pages
- Retarget customers who abandon purchases
- Replicate successful marketing campaigns

---

## Increase Customer Engagement

- Invest more in high-performing content formats
- Strengthen Calls-to-Action (CTAs)
- Produce more interactive content
- Optimize campaign timing based on seasonal trends

---

## Improve Customer Satisfaction

- Address recurring product quality issues
- Identify common themes for mixed and negative feedbacks and address those concerns
- Continue monitoring customer sentiment
- Encourage customer re-rating after resolving their issues

---

# 🛠️ Tools & Technologies

| Category | Tools |
|-----------|-------|
| Database | SQL Server |
| Programming | Python |
| Python Libraries | Pandas, NLTK, VADER, PyODBC |
| Business Intelligence | Power BI Desktop |
| Data Transformation | Power Query |
| Analytics | DAX |
| Data Source | Excel, CSV |

---

# 🚀 Skills Demonstrated

- SQL Data Cleaning
- Data Transformation
- ETL
- Python Programming
- Natural Language Processing (NLP)
- Sentiment Analysis
- Power BI
- Data Modeling
- DAX
- Dashboard Development
- KPI Reporting
- Marketing Analytics
- Customer Journey Analysis
- Executive Reporting
- Data Storytelling
- Business Intelligence

---

# 👤 Author

**Mercy Waruguru**

Data Analyst | SQL | Python | Power BI | Business Intelligence | Marketing Analytics

If you found this project interesting, feel free to ⭐ the repository or connect with me on LinkedIn.
