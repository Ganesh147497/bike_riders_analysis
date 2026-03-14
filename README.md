# 🏍️ Rapido Bike Rider Analysis

A complete end-to-end data analysis project on Rapido bike rider performance across major Indian cities — covering data cleaning, SQL-based analysis, and Power BI visualization.

---

## 📌 Project Overview

This project analyzes operational and financial data of Rapido bike riders to uncover insights around earnings, cancellations, rider efficiency, customer satisfaction, and city-level performance. The goal is to help stakeholders make data-driven decisions to improve rider productivity and platform profitability.

---

## 🗂️ Repository Structure
```
📦 Rapido-Bike-Rider-Analysis
├── 📄 Rapido_riders_data.csv        # Raw dataset
├── 📄 CLEANING.csv                  # Cleaned & processed dataset
├── 📄 BIKE_RIDER_ANALYSIS.sql       # SQL queries for analysis
├── 📊 VISUALIZATION.pbix            # Power BI dashboard file
└── 📄 README.md                     # Project documentation
```

---

## 📊 Dataset Description

The dataset contains daily rider-level records across multiple Indian cities.

| Column | Description |
|---|---|
| `rider_id` | Unique identifier for each rider |
| `date` | Date of the record |
| `location` | City (Mumbai, Kolkata, Chennai, etc.) |
| `rides` | Total rides completed |
| `on_time_rides` | Rides completed on time |
| `cancelled_rides` | Rides cancelled by rider |
| `missed_rides` | Rides missed/unaccepted |
| `distance_km` | Total distance covered (km) |
| `overhead_distance_km` | Extra/non-earning distance |
| `earnings` | Total earnings (₹) |
| `peak_bonus` | Bonus earned during peak hours |
| `waiting_earnings` | Earnings during waiting time |
| `fuel_cost` | Estimated fuel expenditure (₹) |
| `idle_minutes` | Time spent idle (minutes) |
| `work_hours` | Total hours worked |
| `customer_rating` | Average customer rating (out of 5) |
| `avg_speed_kmph` | Average riding speed (km/h) |
| `network_downtime` | App/network downtime (minutes) |

---

## 🧹 Data Cleaning

The raw dataset was cleaned before analysis:

- Removed duplicate records
- Handled missing/null values in numeric columns
- Standardized date formats
- Validated rating ranges (1.0 – 5.0)
- Ensured consistency in city/location names
- Derived `profit = earnings - fuel_cost`

---

## 🛢️ SQL Analysis

All analysis was performed in **MySQL**. Key queries include:

### ✅ Basic Exploration
- View sample records and count total rows
- List distinct cities
- Compute total earnings and average customer rating

### 📍 City-Level Analysis
- Total earnings per city
- Cancellation rate per city
- Total missed rides vs. network downtime per city
- Cities where total profit exceeds ₹10,00,000

### 👤 Rider-Level Analysis
- Top 10 riders by total rides
- Top 10 riders by total profit
- Riders earning above average profit (subquery)

### 💰 Profitability Analysis
- Total profit across all riders
- Profit by idle time category (Low / Medium / High Idle)
- Profit comparison: High Rated vs. Low Rated riders

### 📅 Trend Analysis
- Monthly earnings trend

### 📋 Executive KPI Summary
- Total riders, rides, earnings, fuel cost, profit, cancellation rate, avg rating — all in one query

---

## 📈 Power BI Dashboard

The `.pbix` file contains an interactive dashboard with:

- 📊 City-wise earnings & profit comparison
- 🔢 KPI cards (Total Riders, Total Rides, Total Profit, Avg Rating)
- 📉 Monthly earnings trend line chart
- 🚫 Cancellation rate by city
- ⭐ Customer rating distribution
- 🕒 Idle time category breakdown

---

## 🔍 Key Insights

- **High-rated riders (≥ 4.5)** generate significantly more average profit than low-rated ones
- **Cities with higher network downtime** correlate with more missed rides
- **Riders with low idle time** tend to earn more per hour
- Monthly earnings show **peak trends** during certain months, likely tied to demand surges
- Some cities consistently outperform others in **total profit**, indicating better demand density

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | Data storage & SQL analysis |
| Microsoft Excel / Python | Data cleaning |
| Power BI | Data visualization & dashboarding |

---

## 🚀 How to Run

### SQL Setup
1. Open **MySQL Workbench** or any MySQL client
2. Run the `CREATE TABLE` statement in `BIKE_RIDER_ANALYSIS.sql`
3. Update the file path in `LOAD DATA LOCAL INFILE` to point to `CLEANING.csv` on your machine
4. Execute all queries sequentially

### Power BI Dashboard
1. Open `VISUALIZATION.pbix` in **Power BI Desktop**
2. Update the data source path if prompted
3. Refresh the data to load latest records

---

## 👤 Author

**Ganesh Allu**
- 📧 Connect on [LinkedIn](https://www.linkedin.com/in/ganesh-allu-b234jh)
- 💻 More projects on [GitHub](https://github.com/Ganesh147497)

---

## 📃 License

This project is for educational and portfolio purposes.

---

> ⭐ If you found this project useful, consider giving it a star on GitHub!
