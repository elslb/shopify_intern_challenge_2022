#### a. Think about what could be going wrong with our calculation. Think about a better way  to  evaluate this data.

    For starters, we can immediately see that the naive AOV calculation of 3145.13 dollars would only work in
    the scenario where each store only sold 1 item per order.

    Even then, this naive calculation does not account for any outliers and so will be heavily skewed
    and consequently misrepresenting the data!

    There are multiple ways to tackle this problem depending on how we aim to ultimately use this data.
    A better way to evaluate this data using this calculation as an approach would be to instead take
    the AOV for each store individually, and then finding the average of all of the calculated AOV's to
    provide us with a weighted AOV that accounts for all the stores (with the outliers removed).
    
    Since no one metric could possibly provide the whole story for this dataset (especially considering
    the fact that we are cleaning the data and removing outliers), we could also include the median of
    all order values to give a picture of the central tendency of the data while minimizing the effect
    of the outliers. This can be done on the df pre-cleaning.
    
    
#### b. What metric would you report for this dataset?

    A weighted AOV of all stores that is calculated by taking the AOV of each store, summing them up and then
    dividing by the total number of stores.
    
    I would also report the median of all order amounts.

#### c. What is its value?

    The value of the 'weighted' AOV of all stores (which we found to be 299.68 dollars) is that it accounts for different stores
    having differently priced items and different numbers of sales. As a result of these different prices and sales numbers,
    the different stores do not equally contribute to the sum of the 'order_amount' column. Without accounting for the different
    weights of each shop, we would end up with the problematic naive AOV of 3145.13 which was present in the question.
    Instead, the weighted AOV provides us with a more accurate picture of what we can expect from the stores in this dataset,
    with the exception of the 2 outliers.

    The value of the median of order amounts (calculated to be 284 dollars) lies in its robustness against outliers and helping us
    understand whereabouts the "middle" of our data is.