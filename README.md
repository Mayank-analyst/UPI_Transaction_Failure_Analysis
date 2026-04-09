# 📊 UPI Transaction Failure Analysis

## 🚀 Overview

This project analyzes UPI transaction data to identify patterns, trends, and key factors contributing to transaction failures. The goal is to derive actionable insights that can help improve system reliability and user experience.

---

## 🎯 Objectives

* Analyze overall transaction success vs failure rates
* Identify peak hours of transaction activity
* Detect banks with higher failure rates
* Understand major causes behind failed transactions
* Explore device-wise performance differences

---

## 🛠️ Tools & Technologies

* Excel → Data Cleaning
* SQL (SQLite) → Data Analysis
* Python (Pandas, Matplotlib) → Deep Analysis
* Power BI → Data Visualization & Dashboard

---

## 📂 Dataset

* ~10,000 transaction records
* Includes fields like:

  * Transaction ID
  * Bank
  * Amount
  * Status (Success/Failed)
  * Failure Reason
  * Device
  * Date & Time

---

## 🔍 Key Analysis Performed

### 1. Failure Rate Analysis

* Calculated overall transaction failure percentage
* Identified trends across time and categories

### 2. Bank-wise Performance

* Compared failure rates across different banks
* Highlighted underperforming banks

### 3. Time-based Trends

* Analyzed transaction volume by hour
* Identified peak usage periods
* Correlated peak hours with failure rates

### 4. Failure Reason Analysis

* Determined most common causes of failures
* Categorized system vs user-related issues

### 5. Device Analysis

* Compared transaction success across devices (Android, iOS, Web)

---

## 📈 Dashboard Highlights

* KPI cards for quick overview
* Trend analysis (Transactions vs Failures)
* Bank-wise failure comparison
* Device distribution insights
* Interactive slicers (Bank, Device, Status, Hour)

## Dashboard Preview

---

## 💡 Key Insights

* Transaction failures increase during peak hours, suggesting system load issues
* Certain banks show consistently higher failure rates
* Network errors and timeouts are the most common failure reasons
* Device-based variations indicate possible platform-specific challenges

---

## 📌 Conclusion

The analysis highlights critical areas where UPI systems can improve reliability, especially during high traffic periods. Optimizing infrastructure and addressing network-related issues can significantly reduce transaction failures.

---

## 📁 Project Structure

```
📦 UPI-Transaction-Failure-Analysis
 ┣ 📊 PowerBI Dashboard
 ┣ 📄 Dataset (CSV)
 ┣ 🐍 Python Analysis Script
 ┣ 🗄️ SQL Queries
 ┗ 📘 README.md
```

---

## ⭐ Future Improvements

* Add real-time data integration
* Implement predictive modeling for failure detection
* Build advanced dashboards with drill-through analysis

---

## 🤝 Connect

If you found this project useful, feel free to connect or give it a ⭐ on GitHub!
