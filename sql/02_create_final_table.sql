-- Create final cleaned dataset (remove bad/null data)

CREATE TABLE amazon_final AS
SELECT *
FROM amazon_cleaned_v2
WHERE rating IS NOT NULL
  AND rating_count IS NOT NULL
  AND discounted_price IS NOT NULL
  AND actual_price IS NOT NULL;