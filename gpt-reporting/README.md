# 🤖 GPT-4 Insight Reporting System

This project showcases a fully automated reporting pipeline that uses OpenAI's GPT-4 to generate weekly insight summaries from structured data. The results are delivered via email and Excel, automating what used to take hours of manual effort.

## 🔧 Features

- Auto-generates business summaries from tabular data
- Uses OpenAI GPT-4 API via `httr` or `openai` wrapper
- Formats results with `blastula` (for email) and `openxlsx` (for Excel)
- Outputs include Markdown, HTML, and XLSX

## 📈 Use Case

Perfect for executives or managers who want to receive automatic reports with GPT-generated insight instead of raw tables or dashboards.

## 📎 Example

Example Output:  
- 📧 [Weekly Email Summary](example_output/email_sample.html)  
- 📊 [Excel File](example_output/report_sample.xlsx)

---

**Tech Stack:** R, GPT-4 API, blastula, openxlsx  
