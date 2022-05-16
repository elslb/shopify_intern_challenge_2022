#### On Shopify, we have exactly 100 sneaker shops, and each of these shops sells only one model of shoe.
#### We want to do some analysis of the average order value (AOV).
#### When we look at orders data over a 30 day window, we naively calculate an AOV of $3145.13.
#### Given that we know these shops are selling sneakers, a relatively affordable item, something seems wrong with our analysis.
#### 
---

#### a. Think about what could be going wrong with our calculation. Think about a better way to evaluate this data.

    For starters, we can immediately see that the naive AOV calculation of $3145.13 dollars would only work in
    the scenario where each store only sold 1 item per order.

    Even then, this naive calculation does not account for any outliers and so will be heavily skewed
    and consequently misrepresent the data!

    There are multiple ways to tackle this problem depending on what our ultimate goal is.
    A better way to evaluate this data using this calculation would be to instead take the AOV for each
    store individually, and then find the average of all of the calculated AOV's to
    provide us with a weighted AOV that accounts for all the stores (with the outliers removed).
    
    Since no one metric could possibly provide the whole story for this dataset (especially considering
    the fact that we are cleaning the data and removing outliers), we could also include the median of
    all order amounts to provide a frame of reference for the distribution of the data since the median
    is not disturbed by the effects of outliers.
    
    
#### b. What metric would you report for this dataset?

    A weighted AOV of all stores that is calculated by taking the AOV of each store, summing them up and then
    dividing by the total number of stores.
    
    I would also report the median of all order amounts.

#### c. What is its value?

   ##### Weighted AOV of all stores = $299.68
    The value of this metric is that it accounts for different stores having differently priced items and different numbers of sales.
    As a result of these different prices and sales numbers, the different stores do not equally contribute to the sum of the
    'order_amount' column.
    
    Without accounting for the different weights of each shop, we would end up with the erroneous naive AOV of $3145.13 which was
    presented as a given in the question. Instead, the weighted AOV provides us with a more accurate picture of what we can expect
    from the stores in this dataset, with the exception of the 2 outliers.

   ##### Meadian of order amounts = $284
    The value of this metric lies in its robustness to outliers and helping us understand where the "middle" of our data is.