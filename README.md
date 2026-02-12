                                                              Bike Riders Performance Analytics 


Project Architecture:

                         Excel (Data Cleaning)
                                  ↓
                         MySQL (SQL Analysis)
                                  ↓
                      Power BI (Dashboard & Visualization)

Project Overview:
                 This project is an end-to-end data analytics solution that evaluates rider financial performance and operational efficiency across multiple cities. The                            objective was to identify key drivers of profitability, cancellation trends, and performance patterns using structured data analysis and visualization.
Tools & Technologies Used:
                         Microsoft Excel – Data Cleaning & Preparation
                         MySQL – Data Storage & SQL Analysis
                         Microsoft Power BI – Dashboard Visualization & Business Insights
Project Workflow:
       1)  Data Cleaning using Excel:
                                  >  Removed duplicates and handled missing values
                                  > Standardized date format to YYYY-MM-DD
                                  > Ensured correct data types (numeric, date, text)
                                  > Verified column consistency before database import
                                  > Exported cleaned dataset as CSV for SQL integration
                                  > Excel was used as the initial ETL (Extract, Transform, Load) stage.
        2)Data Analysis using MySQL:
                                  > Created structured database and tables
                                  > Imported CSV dataset into MySQL
                                  > Used SQL queries for:
                                  > Aggregations (SUM, AVG, COUNT)
                                  > GROUP BY analysis
                                  > Profit calculation (earnings - fuel_cost)
                                  > Cancellation rate computation
                                  > City-level performance comparison
                                  > Top rider identification
                                  > Performed business-driven analysis to derive operational insights
         3) Dashboard Development using Power BI:
                                            Connected Power BI to Excel/MySQL dataset
                                            Created DAX measures:
                                            Total Revenue
                                            Net Profit
                                            Cancellation Rate %
                                            Average Customer Rating
                                            Designed interactive dashboard with:
                                            KPI Cards
                                            Bar Charts (City Comparison)
                                            Line Charts (Monthly Trend)
                                            Scatter Plots (Idle Time vs Earnings)
                                            Slicers for dynamic filtering
            4) Key Business Insights:
                                    High idle time significantly reduces rider profitability.
                                    Certain cities demonstrate higher cancellation rates affecting revenue.
                                    Network downtime contributes to increased missed rides.
                                    Top-performing riders generate a disproportionate share of total profit.

    Business Value:
                    Monitor operational efficiency
                    Improve ride allocation strategies
                    Reduce cancellation rates
                    Enhance rider profitability
                    Support data-driven business decisions

      Conclusion:
                   The project demonstrates practical implementation of an end-to-end data analytics workflow, combining Excel, SQL, and Power BI to transform raw                               operational data into actionable business insights.
