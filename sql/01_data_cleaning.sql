-- Create cleaned table with proper data types

CREATE TABLE amazon_cleaned_v2 AS
SELECT
    product_id,
    product_name,
    category,

    -- Convert rating to double
    TRY_CAST(rating AS DOUBLE) AS rating,

    -- Convert rating_count to integer
    TRY_CAST(rating_count AS INT) AS rating_count,

    -- Clean discounted_price (remove ₹ and commas)
    TRY_CAST(
        REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')
        AS DOUBLE
    ) AS discounted_price,

    -- Clean actual_price
    TRY_CAST(
        REPLACE(REPLACE(actual_price, '₹', ''), ',', '')
        AS DOUBLE
    ) AS actual_price,

    -- Clean discount percentage
    TRY_CAST(
        REPLACE(discount_percentage, '%', '')
        AS INT
    ) AS discount_percentage,

    about_product

FROM amazon_processed;