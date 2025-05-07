# 📊 AI-Augmented Marketing Report Generator (R + OpenAI API)

This project showcases how to generate an intelligent, structured Excel report using R and the OpenAI API. It connects a sample marketing dataset to GPT-4 through programmatic prompts, producing a data-driven narrative report that summarizes insights and trends for business stakeholders.

---

## 🚀 Features

- 🔄 Automatically loads and analyzes `marketing_sample_data.csv`
- 🧠 Sends layered prompts to GPT-4 to:
  - Identify high-level insights
  - Drill into patterns by region, product, and metrics
  - Suggest recommendations and business actions
- 📈 Exports results to a professional Excel file (`gpt_marketing_report.xlsx`)
- 🔐 Uses environment variables to protect your OpenAI API key
- 📦 Easily adaptable to other datasets and reporting needs

---

## 🛠️ Technologies Used

- `R` (scripting language)
- `openai` (for GPT API connection)
- `readr` & `dplyr` (for data wrangling)
- `writexl` (to generate Excel output)

---

## 📁 Folder Structure

<pre><code>
  ## 📁 Folder Structure ``` report_generator/ 
  ├── generate_report.R # Main R script to generate the marketing report 
  ├── marketing_sample_data.csv # Sample marketing dataset 
  ├── gpt_marketing_report.xlsx # AI-generated report output 
  └── README.md # This documentation file ``` </code></pre>
