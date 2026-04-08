-- ================================
-- 📊 ANALYSIS QUERIES
-- ================================


-- ⭐ 1. Top Rated Products
SELECT product_name, rating
FROM amazon_final
ORDER BY rating DESC
LIMIT 10;


-- ⭐ 2. Most Reviewed Products
SELECT product_name, rating_count
FROM amazon_final
ORDER BY rating_count DESC
LIMIT 10;


-- ⭐ 3. Biggest Discounts
SELECT product_name, discount_percentage
FROM amazon_final
ORDER BY discount_percentage DESC
LIMIT 10;


-- ⭐ 4. Best Value Products (High rating + high discount)
SELECT product_name, rating, discount_percentage
FROM amazon_final
WHERE rating >= 4.0
ORDER BY discount_percentage DESC
LIMIT 10;


-- ⭐ 5. Average Rating per Category
SELECT category, AVG(rating) AS avg_rating
FROM amazon_final
GROUP BY category
ORDER BY avg_rating DESC;


-- ⭐ 6. Price Range vs Rating Insight
SELECT
    CASE
        WHEN discounted_price < 500 THEN 'Low Price'
        WHEN discounted_price BETWEEN 500 AND 2000 THEN 'Mid Price'
        ELSE 'High Price'
    END AS price_range,
    AVG(rating) AS avg_rating
FROM amazon_final
GROUP BY price_range
ORDER BY avg_rating DESC;


-- ⭐ 7. Discount Range vs Rating
SELECT
    CASE
        WHEN discount_percentage < 20 THEN 'Low Discount'
        WHEN discount_percentage BETWEEN 20 AND 50 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_range,
    AVG(rating) AS avg_rating
FROM amazon_final
GROUP BY discount_range;


-- ⭐ 8. Top Categories by Reviews
SELECT category, SUM(rating_count) AS total_reviews
FROM amazon_final
GROUP BY category
ORDER BY total_reviews DESC
LIMIT 10;


-- ⭐ 9. Best Value Score (Advanced)
SELECT
    product_name,
    rating,
    discount_percentage,
    (rating * discount_percentage) AS value_score
FROM amazon_final
WHERE rating >= 4.0
ORDER BY value_score DESC
LIMIT 10;