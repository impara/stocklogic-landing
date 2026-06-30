# StockLogic landing page - static nginx serve (Coolify / Docker)
FROM python:3.12-alpine AS seo-index
WORKDIR /site
COPY . .
RUN python3 tools/seo_index.py --check || python3 tools/seo_index.py

FROM nginx:alpine

# HTML and assets
COPY --from=seo-index /site/*.html /site/sitemap.xml /site/robots.txt /usr/share/nginx/html/
COPY --from=seo-index /site/assets /usr/share/nginx/html/assets

EXPOSE 80
