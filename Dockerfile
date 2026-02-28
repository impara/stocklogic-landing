# StockLogic landing page - static nginx serve (Coolify / Docker)
FROM nginx:alpine

# HTML and assets
COPY index.html blog.html blog-bundle-inventory.html blog-prevent-overselling.html blog-loop-safe-inventory.html blog-bundles-app-vs-third-party.html privacy.html sitemap.xml robots.txt /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets

EXPOSE 80
