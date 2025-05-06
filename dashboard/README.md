# 📊 AI-Augmented System Performance Dashboard (Shiny)

This project demonstrates a clean, interactive KPI dashboard built in R using **Shiny**, **tidyverse**, and **ggplot2**. It enables users to monitor and analyze system performance across regions using dynamic filters, time-series graphs, and real-time summary metrics.

---

## 🚀 Features

- 🔍 Dynamic sidebar filters for Region and Date Range
- 📈 Time-series visualizations of:
  - Defect Rate
  - Reliability Score
  - Downtime (minutes)
- 🧮 KPI summary table (average metrics)
- 📋 Interactive data table with sorting/searching (via `DT`)
- 🧑‍💼 Responsive UI design suitable for GitHub and business demonstration
- 🧱 Clean folder structure and reusable code base

---

## 🛠️ Technologies Used

- `shiny`
- `tidyverse` (for data wrangling and visualization)
- `DT` (interactive tables)
- `ggplot2` (data visualization)

---

## 📂 Folder Structure

<pre> ``` 
  dashboard/ 
  ├── app.R # Main Shiny application 
  ├── sample_data.csv # Sample KPI dataset (288 rows) 
  ├── screenshots/ # Dashboard screenshots 
  └── README.md # This documentation file 
  ``` </pre>
