## Product Conversion & User Funnel Performance Analysis
This project performs an end-to-end analysis of a SaaS platform's user event data to map the conversion funnel, diagnose leakage points, and provide data-driven recommendations for revenue optimization.

### 🎯 Key Business Questions Addressed
1.  What is the core conversion rate, and which step has the highest drop-off?
2.  How does performance differ across devices (Mobile vs. Web)?
3.  What are the top-performing products and geographic markets?
4.  Is the business experiencing stable revenue growth?

### ⚙️ Methodology & Analysis
1.  **Event Classification:** Raw events (`page_view`, `search`, `product_view`, `purchase`) were classified into a standard 4-stage funnel: **Product View $\to$ Add to Cart $\to$ Checkout $\to$ Conversion.**
2.  **Sequential Conversion Rate:** A SQL query was used to calculate the session count for each step and the step-to-step conversion rate (`Current Sessions / LAG(Previous Sessions)`), accurately measuring drop-off.
3.  **Segmentation:** Key Performance Indicators (KPIs) were segmented by `device` and `country` to create diagnostic charts.
4.  **Time Series Analysis:** Monthly trends were analyzed to identify volatility in both conversion rate and total revenue.

### 💡 Key Findings & Recommendations
| Finding | Recommendation | Business Impact |
| :--- | :--- | :--- |
| **Mobile Friction:** Conversion rate significantly drops between **Checkout and Convert** on mobile devices, indicating a critical UX failure point. | **Urgent UX Audit:** Prioritize investigation of mobile checkout forms, payment processing, and mandatory sign-up walls to capture lost revenue. | Close the $\mathbf{40\%}$ mobile conversion gap. |
| **Revenue Volatility:** Experienced a sharp $\mathbf{32\%}$ revenue decline month-over-month (Oct/Nov). | **Root Cause Analysis:** Immediately investigate the cause of the October dip (site outage, campaign change, technical error) to stabilize growth. | Ensure reliable revenue forecasting. |
| **Market/Product Focus:** P021 and markets IN/US are primary revenue drivers. | **Resource Allocation:** Concentrate marketing spend and inventory efforts on these high-performing segments. | Maximize ROI on marketing and inventory. |
