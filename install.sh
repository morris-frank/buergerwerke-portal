#!/bin/bash

bundle install --path ./vendor/bundle
RAILS_ENV=production rails db:create
RAILS_ENV=production rails db:migrate
RAILS_ENV=production rails assets:precompile
cp public/assets/404.html public/
cp public/assets/422.html public/
cp public/assets/500.html public/
