# 📊 Customer Response Classifier (ML with tidymodels)

This project demonstrates a machine learning classification pipeline using **R** and the **tidymodels** ecosystem. It trains a model to predict whether a customer will respond to marketing efforts, using a structured CSV dataset with demographic and behavioral data.

---

## 🚀 Features

- 📥 Loads and processes a clean dataset: `marketing_model_data.csv`
- 🧠 Builds a complete ML workflow using **tidymodels**:
  - Splits data into training/testing sets (stratified)
  - Handles missing values and normalizes predictors
  - Converts categorical variables into dummy variables
- 🌲 Trains a **Random Forest** classification model using `rand_forest()` from `parsnip`
- 📊 Evaluates model performance using:
  - Accuracy
  - Precision / Recall / F1 Score
  - ROC-AUC + Confusion Matrix
- 📈 Outputs a **feature importance plot** using `ggplot2`
- 📤 Exports key results and metrics to `modeling_output.xlsx` using `openxlsx`

---

## 🧰 Technologies Used

- **R** (scripting language)
- **tidymodels** (ML pipeline: recipes, parsnip, yardstick, etc.)
- **openxlsx** (write Excel output)
- **dplyr**, **ggplot2** (data wrangling and visualization)

---

## 📁 Folder Structure

```
ml_modeling_project/
├── marketing_model_data.csv      # Dataset with 5000 rows, 11 columns
├── ml_modeling.R                 # Main R script for ML pipeline
├── modeling_output.xlsx          # Excel file with model results and metrics
└── README.md                     # This documentation
```



