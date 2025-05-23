# Midterm Lab Task 2 Project: Data Cleaning and Transformation Using Power Query Editor

## Overview

Company X aims to derive actionable insights from the "UnclenedDSJobs" dataset sourced from Kaggle. The analysis focuses on understanding salary trends across various job roles, company sizes, and geographic locations.

## Objectives

1. **Identify Job Roles with the Highest and Lowest Salaries**
2. **Analyze Salary Trends by Company Size**
3. **Examine Salary Differences by State**

## Data Cleaning and Transformation Tasks

### Part 1: Initial Cleaning

- **Salary Estimate**: Split into **Min Sal** and **Max Sal** columns.
- **Role Type**: Add a column to classify roles (e.g., Full-time, Part-time).
- **Location**: Split into city and state, correct inconsistencies.
- **Size**: Split into minimum and maximum size ranges.
- **Negative Values**: Identify and correct or remove negative values.
- **Company Name**: Remove appended rating info.
- **Remove Unnecessary Columns**: Drop irrelevant columns.

### Part 2: Reshape and Group Data

- **Duplicate and Rename**: Duplicate and rename dataset for role type analysis.
- **Create References**: Create references for company size and state analysis.
- **Mapping External Files**: Integrate additional data if needed.

### Visual References

- *Before Cleaning*: Insert uncleaned dataset screenshot.

<table style="border-spacing: 30px; border: 5px solid black; background-color: black;">
    <tr>
        <td style="border: 3px solid white; padding: 5px;"><img src="./Images/raw.png" alt="First Image" width="250" height="200"></td>
        <td style="border: 3px solid white; padding: 5px;"><img src="./Images/raw2.png" alt="Second Image" width="250" height="200"></td>
        <td style="border: 3px solid white; padding: 5px;"><img src="./Images/raw3.png" alt="Third Image" width="250" height="200"></td>
    </tr>
</table>


- *After Cleaning*: Insert cleaned dataset screenshot.
  
<div align="left">
<img src="./Images/cleaned1.png" alt="First Image" width="250" height="200" style="margin-right: 10px;">
<img src="./Images/cleaned%202.png" alt="Second Image" width="250" height="200" style="margin-right: 10px;">
<img src="./Images/cleaned3.png" alt="Third Image" width="250" height="200">
</div>

## Dependencies and References
- Insert relevant screenshots.
<div align="left">
    <img src="./Images/EDM%20Lab2%20Queries%20Dependencies.png" alt="Salary Role Screenshot" width="250" height="200" style="margin-right: 10px;">
</div>

## Final Output

<div align="left">
    <img src="./Images/sal%20role%201.png" alt="Salary Role Screenshot" width="250" height="200" style="margin-right: 10px;">
    <img src="./Images/2.png" alt="Cleaned Dataset" width="250" height="200">
</div>

<br>

<div align="left">
    <img src="./Images/3.png" alt="Query Result 1" width="250" height="200" style="margin-right: 10px;">
    <img src="./Images/4.png" alt="Query Result 2" width="250" height="200">
</div>

### Physical Data Model

- Insert data model screenshot.

## Conclusion

This project cleans and transforms the dataset to reveal insights into salary trends based on roles, company sizes, and locations.

---


