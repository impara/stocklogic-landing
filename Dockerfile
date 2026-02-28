# StockLogic landing page - static nginx serve (Coolify / Docker)
FROM nginx:alpine

# HTML and assets
COPY index.html blog.html blog-bundle-inventory.html privacy.html sitemap.xml robots.txt /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

EXPOSE 80
