# Adventure Works Executive Summary Dashboard

## About Dataset

The Adventure Works dataset is provided by Microsoft (documentation can be found [here](https://dataedo.com/samples/html/AdventureWorks/doc/AdventureWorks_2/home.html)). It represents a fictitious company called Adventure Works Cycles - a bicycle manufacturing and sales company. It operates within the outdoor recreational products industry, primarily focusing on bicycles and related accessories.

## About Project

**GOAL**: visualise associated sales and product data in order to draw insights on how well individual US states are performing & offer data-driven recommendations on future operations within specific US states.  
**LINK TO DASHBOARD**: [Adventure Works Executive Summary Dashboard](https://public.tableau.com/shared/3K29Q2YM5?:display_count=n&:origin=viz_share_link)

**DETAILS**:
  - Data range: 2001 Jul - 2004 Jun
  - 4 KPIs analysed: Revenue, Profit, Avg. Order Value (AOV) & No. Orders
  - Dynamic charts: each chart adapts to the parameter selected (Year, Selected KPI, Order Type, State)
  - YoY Change: both the KPI display as well as the Category & Subcategory charts indicate YoY Change. States Map & Top 5 States List also displays this information in toolbars.

## Product Categories & Subcategories

The product category and subcategory charts dynamically change based on the parameter selected. Here I am manipulating the Selected KPI (Revenue, Profit, AOV, No. Orders) and Order Type (Online, Store). The chart also responds to changes in Selected Year & State.

![Interactive Product Category & Subcategory Charts](https://github.com/gircyte/AW-Executive-Dashboard/blob/main/Dynamic%20Product%20Categories%20and%20Subcategories.gif?raw=true)

The black line indicates previous year's performance based on the parameter selected. The top category/subcategory is also highlighted.

**INSIGHTS**:
  - The highlighted top category/subcategory lets the shareholders easily see what is performing the best based on the selected parameters
  - The black bar indicating previous year's performance allows for clear identification of potentially problematic areas within categories and subcategories
