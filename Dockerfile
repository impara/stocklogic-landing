# StockLogic landing page - static nginx serve (Coolify / Docker)
FROM nginx:alpine

# HTML and assets
COPY index.html blog.html privacy.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

EXPOSE 80
