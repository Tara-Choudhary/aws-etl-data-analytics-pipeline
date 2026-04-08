# 🚀 AWS Data Pipeline using S3, Glue & Athena

## 📌 Project Overview

This project demonstrates an **end-to-end data pipeline on AWS** where raw Amazon product data is ingested, cleaned, transformed, and analyzed using cloud-native services.

The pipeline follows a modern data engineering workflow:

* Store raw data in **Amazon S3**
* Use **AWS Glue** for schema detection and ETL transformations
* Query processed data using **Amazon Athena**
* Generate insights using SQL

## 🎯 Project Objective

This project demonstrates:

* 📊 **Data Analyst Skills**

  * SQL-based data analysis
  * Business insight generation
  * Data cleaning & preparation

* ⚙️ **Data Engineering Fundamentals**

  * Building ETL pipelines using AWS Glue
  * Data lake architecture using S3
  * Query optimization using Parquet

---

## 🔥 Key Highlights

- Built end-to-end AWS data pipeline (S3 → Glue → Athena)
- Converted raw CSV data into optimized Parquet format
- Performed data cleaning and transformation using Glue ETL
- Generated business insights using SQL queries
- Designed scalable data lake architecture
---

## 📥 Dataset

This project uses Amazon product data.

Due to size constraints, the dataset is not included in this repository.

You can:
- Download from Kaggle (Amazon Product Dataset)
- Or use any similar dataset

Upload it to the S3 `raw/` folder to reproduce the pipeline.

---

## 💼 Business Problem

E-commerce platforms generate massive product datasets that are often messy and inefficient for analysis.

This project solves:

- Cleaning and structuring raw product data
- Identifying top-performing products
- Analyzing pricing and discount strategies
- Enabling data-driven decision making

---

## 🏗️ Architecture

```
<img width="1170" height="567" alt="Data-pipeline-architecture" src="https://github.com/user-attachments/assets/1654364d-45be-45d8-958d-c2e125ff02cd" />

```
## 🔁 Data Flow

1. Raw CSV uploaded to S3
2. Glue Crawler infers schema → Data Catalog
3. Glue ETL Job cleans & transforms data
4. Output stored as Parquet in processed/
5. Athena queries processed data
---

## ⚙️ Tech Stack

* **Amazon S3** → Data storage (raw & processed)
* **AWS Glue** → ETL & Data Catalog
* **Amazon Athena** → SQL querying
* **SQL** → Data analysis
* **Parquet** → Optimized storage format

---

## 📂 Project Structure

```
amazon-data-pipeline/
│
├── sql/
│   ├── data_cleaning.sql
│   ├── create_final_table.sql
│   ├── analysis_queries.sql
│
├── screenshots/
│   ├── s3/
│   ├── glue/
│   ├── athena/
│
├── README.md
│
├── architecture/
│   ├── data-pipeline-architecture.png
 
```

---

## 🔄 Data Pipeline Steps

### 1️⃣ Data Ingestion

* Uploaded raw dataset (`amazon.csv`) to **S3 (raw/ folder)**

---

### 2️⃣ Schema Detection

* Used **AWS Glue Crawler**
* Automatically created table in Data Catalog

---

### 3️⃣ Data Cleaning & Transformation

Performed using **AWS Glue ETL Job + Athena SQL**:

* Converted data types (string → double/int)
* Removed symbols (₹, %, commas)
* Handled NULL values
* Created structured dataset

---

### 4️⃣ Data Storage Optimization

* Stored cleaned data in **Parquet format**
* Saved in **S3 processed/ folder**
* Improved query performance & reduced cost

---

### 5️⃣ Data Analysis (Athena Queries in `/sql` folder)

- Which products have the highest ratings?
- Which products have the most reviews?
- Which products offer the biggest discounts?
- Which products provide the best value?


---

## 📊 Key Insights

- Products with high discounts (>80%) are not always highly rated
- Certain categories consistently show higher average ratings
- A small subset of products contributes to the majority of reviews
- High-rated products with good discounts offer the best value
* Built end-to-end AWS data pipeline
* Processed raw CSV → Parquet using Glue
* Queried data using Athena


---

## 📸 Screenshots

Key pipeline stages:

- S3 bucket structure (raw & processed data)
- AWS Glue crawler and ETL job execution
- Athena table schema and query results

*(See `/screenshots` folder for details)*

---

## 🚧 Challenges Faced

* Handling inconsistent data types in raw CSV
* Cleaning currency and percentage values
* Managing NULL values in Athena
* Optimizing storage using Parquet

---

## 📚 Learnings

* Built a **real-world end-to-end AWS data pipeline**
* Learned **Glue ETL + Crawlers**
* Improved SQL for data analysis
* Understood **data lake architecture**
* Optimized queries using **Parquet format**

---

## 🧠 Skills Demonstrated

### 📊 Data Analytics
- SQL querying
- Aggregations & filtering
- Business insights

### ⚙️ Data Engineering (Basics)
- ETL pipeline design
- AWS Glue (Crawler + Jobs)
- Data Catalog
- S3 data lake

### 🚀 Optimization
- Columnar storage (Parquet)
- Query performance tuning
- Cost-efficient processing

---

## 🙌 Conclusion

This project showcases how to build a **scalable and cost-efficient data pipeline on AWS**, transforming raw data into meaningful insights using modern data engineering tools.

---

## 🔗 Connect with Me

**Author:** Tara Choudhary  

**GitHub:** [Tara-Choudhary](https://github.com/Tara-Choudhary)  

**LinkedIn:** [Tara Choudhary](https://www.linkedin.com/in/tara-choudhary00/)  

**Email:** developer.tarachoudhary@gmail.com

---
