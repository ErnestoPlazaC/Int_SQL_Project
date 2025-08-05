 # Intermediate SQL - Sales Analysis

 ## Overview
 Analysis of customer behavior, retention, and lifetime value for an e-commerce company to improve customer retantion and maximize revenue.

 ## Business Questions
1. **Customer Segmentation:** Who are our most valuable customers?
2. **Cohort Analysis:** How do different customer groups generate revenue?
3. **Retantion Analysis:** Who Hasn’t Purchased Recently?

 ## Analysis Approach

 ### 1. Customer Segmentation Analysis
 - Categorize customers based on their total lifetime value (LTV).
 - Assign customers to High, Mid, and Low-value segments.
 - Calculated key metrics: total revenue

 🖥️ Query: [1_customer_segmentation](/Scripts/1_customer_segmentation.sql)

 **📈 Visualization:**

 ![Customer Segmentation](/Scripts/images/customer_segementation.png)

 📊 **Key Findings:**
 - High-value segment (25% of customers) drives 66% of revenue ($135.4M)
 - Mid-value segment (50% of customers) generates 32% of revenue ($66.6M)
 - Low-value segment (25% of customers) accounts for 2% of revenue ($4.3M)

 💡 **Business Insights**
 - High-Value (66% revenue):
    - Offer premium membership program to 12,372 VIP customers
    - Provide early access to new products and dedicated support
    - Focus on retention as losing one customer impacts revenue significantly
 - Mid-Value (32% revenue):
    - Create upgrade paths for 24,743 customers through personalized promotions
    - Target with "next best product" recommendations based on high-value patterns
    - Potential $66.6M → $135.4M revenue opportunity if upgraded to high-value
- Low-Value (2% revenue):
    - Design re-engagement campaigns for 12,372 customers to increase purchase frequency
    - Test price-sensitive promotions to encourage more frequent purchases
    - Focus on converting $4.3M segment to mid-value through targeted offers
 
### 2. Cohort Analysis
 - Tracked revenue and customer count per cohorts 
 - Cohorts were grouped by year of first purchase
 - Analyzed customer retention at cohort level

 🖥️ Query: [2_cohort_analisis.sql](/Scripts/2_cohort_analysis.sql)

 **📈 Visualization:**

 ![Cohort Analysis](/Scripts/images/2_cohort_analysis.png)

 📊 **Key Findings:**
 - Revenue per customer shows an alarming decreasing trend over time.
    - 2022-2024 cohorts are consistently performing worse than earlier cohorts.
    - NOTE: Although net revenue is incresing, this is likely due to a larger customer base, which is not reflective of customer value.

 💡 **Business Insights**
 - Value extracted from customers is decreasing over time and needs further investigation
 - in 2023 we saw a drop in number of customers acquired, which is concerning.
 - With both lowering LTV and decreasing customer acquisition, the company is facing a potential revenue decline.

### 3. Retention Analysis
 - Identified customers at risk of churning 
 - Analyzed last purchase patterns
 - Calculated customer specific metrics

 🖥️ Query: [3_retention_analisis.sql](/Scripts/3_retention_analysis.sql)

 **📈 Visualization:**

 ![Customer Churn by Cohort Year](/Scripts/images/customer_churn_cohort_year.png)

 📊 **Key Findings:**
 - Cohort churn stabilizes at ~90% after 2-3 years, indicating a predictable long-term retention pattern.
 - Retention rates are consistently low (8-10%) across all cohorts, suggesting retention issues are systemic rather than specific to certain years.
 - Newer cohorts (2022-2023) show similar churn trajectories, signaling that without intervention, future cohorts will follow the same pattern.

 💡 **Business Insights**
 - Strengthen early engagement strategies to the first 1-2 years with onboarding incentives, loyalty rewards, and personalized offers to improve long-term retantion.
 - Re-engage high-value churned customers by focusing on targeted win-back campaigns rather than broad retantion efforts, as reactivating valuable users may yield a higher ROI.
 - Predict & preempt churn risk and use customer-specific warning indicators to proactively intervene with at-risk users before they lapse.

 ## Strategic Recomendations
 1. **Customer Value Optimization** (Customer Segmentation)
      - Target high_value segment (66% revenue) with a program focused on added value and post-sale services.
      -  Create upgrade paths for mid-value segment ($66.6M → $135.4M revenue opportunity)
      - Revalueate the pricing strategy for products targeted to the low-value segment to stimulate purchase frequency

 2. **Cohort Performance Strategy** (Customer Revenue by Cohort)    
      - Target 2022-2024 cohorts with personalized re-engagement offers, and benefits for purchasing multiply times per month
      - Implement loyalty/subscription programs to stabilize revenue fluctuations
      - Apply successful strategies from high-spending 2016-2018 cohorts to newer customers

3. **Retention & Churn Prevention** (Customer Retention)
      - Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards
      - Emphasize on customer retention programs, with incentives and added value for multyple purchases
      - Focus on win-back campaings and special offers for high-value churned customers
      - Implement proactive intervension methods to target at-risk customers before they lapse

 ## Technical Details
 - **Database:** PostgreSQL
 - **Analysis Tools:** PostgreSQL
 - **Visualization:** ChatGPT
