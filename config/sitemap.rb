require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://guides.collectib.ly'
SitemapGenerator::Sitemap.create_index = true
# pick a place safe to write the files
SitemapGenerator::Sitemap.public_path = 'tmp/'
# store on S3 using Fog
SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new
# inform the map cross-linking where to find the other maps
SitemapGenerator::Sitemap.sitemaps_host = "http://#{ENV['FOG_DIRECTORY']}.s3.amazonaws.com/"
# pick a namespace within your bucket to organize your maps
SitemapGenerator::Sitemap.sitemaps_path = 'collectibly-guides-sitemaps/'
SitemapGenerator::Sitemap.create do
  add root_path
  # DbItem.find_each do |db_item|
  #   add db_item_path(db_item), lastmod: db_item.updated_at, changefreq: 'weekly', priority: 1.0
  # end
  # User.find_each do |user|
  #   add user_path(user), lastmod: user.updated_at, changefreq: 'weekly'
  # end
  # Collection.find_each do |collection|
  #   add user_collection_path(collection.user, collection), lastmod: collection.updated_at, changefreq: 'monthly'
  # end
  # Item.find_each do |item|
  #   add user_item_path(item.user, item), lastmod: item.updated_at, changefreq: 'weekly'
  # end
  # Brand.find_each do |brand|
  #   add brand_path(brand), lastmod: brand.updated_at, changefreq: 'weekly', priority: 0.9
  # end
  # Series.find_each do |series|
  #   add series_path(series), changefreq: 'weekly'
  # end
  # ItemSet.find_each do |set|
  #   add item_set_path(set), changefreq: 'weekly'
  # end
  # Review.find_each do |review|
  #   add db_item_review_path(review.db_item, review), lastmod: review.updated_at, changefreq: 'daily', priority: 1.0
  # end
  # Discussion.find_each do |discussion|
  #   add discussion_path(discussion), lastmod: discussion.updated_at, changefreq: 'daily', priority: 1.0
  # end

end
SitemapGenerator::Sitemap.ping_search_engines