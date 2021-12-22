SELECT products.id,
       products.name,
       products.description,
       products.price,
       products.catalog_id,
       catalogs.name AS catalog_name,
       products.created_at,
       products.updated_at
FROM products
         INNER JOIN catalogs ON products.catalog_id = catalogs.id;
