#!bin/bash
set -vx

docker compose up -d
# docker start design-auctions-web-1
# docker start design-auctions-db-1
docker exec -d design-auctions-web-1 sh -c "rails db:create db:migrate db:seed && yarn install && yarn build --watch"
docker compose down
sh start.sh