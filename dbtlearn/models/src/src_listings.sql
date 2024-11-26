-- import raw_listings
WITH raw_listings AS (
  SELECT
    id AS listing_id,
    listing_url,
    name AS listing_name,
    room_type,        
    minimum_nights,       
    host_id,
    price AS price_str,
    created_at,
    updated_at
  FROM {{ source('airbnb', 'listings') }}
),
final AS (
  SELECT * FROM raw_listings
)
SELECT * FROM final
