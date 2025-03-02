# **Statistical Analysis of Student Performance**
---

## **Project Overview**
This project involves statistical analysis of student performance data using R. The ustilized dataset includes information on students' grades, failures, and other academic factors. The goal is to analyze the distribution of failures among genders, differences in final grades (G3) based on higher education intent and paid classes, and compare G1 grades between mathematics and Portuguese subjects.
---
## Files:
1.  **`academic_analysis_rcode.R`**
   - Contains the R code for performing the following analyses:
     - Chi-Square Goodness of Fit Test
     - ANOVA (Additive and Interaction Models)
     - Independent t-test
2. **`academic_analysis_findings.pdf`**
   - A detailed report of the findings, including hypotheses, assumptions, results, and conclusions.
3. **`student_por.csv`**
   - Dataset for Portuguese student performance (used in the analysis).
4. **`student_math.csv`**
   - Dataset for mathematics student performance (used in the analysis).
## **Statistical Tests Performed**
1. **Chi-Square Goodness of Fit Test**
   - **Objective:** Test if the distribution of failures in Portuguese is equal across genders.
   - **Conclusion:** No significant evidence of unequal distribution (p = 0.2965).

2. **ANOVA (Additive and Interaction Models)**
   - **Objective:** Test for differences in G3 grades based on higher education intent and paid classes.
   - **Conclusion:**
     - Significant difference in G3 grades based on higher education intent (p < 0.05).
     - No significant difference based on paid classes (p = 0.0898).
     - No significant interaction effect between higher education intent and paid classes (p = 0.3071).

3. **Independent t-test**
   - **Objective:** Compare G1 grades between mathematics and Portuguese subjects.
   - **Conclusion:** Significant difference in G1 grades (p = 0.0139), with Portuguese grades being higher.
---
## **Results Summary**
- **Chi-Square Test:** Failures are equally distributed across genders.
- **ANOVA:** Higher education intent significantly affects G3 grades, but paid classes do not.
- **t-test:** Portuguese G1 grades are significantly higher than mathematics G1 grades.

