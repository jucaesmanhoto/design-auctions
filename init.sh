#!bin/bash
set -vx

docker compose up -d
docker exec -d design-auctions-web-1 sh -c "rails db:create db:migrate db:seed && yarn install && yarn build --watch"
