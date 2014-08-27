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
  # add gotg_starlord_guide_path
  # add gotg_rocket_guide_path
  # add gotg_groot_guide_path
  # add gotg_gamora_guide_path
  # add gotg_drax_guide_path
  # add gotg_ships_guide_path
end
SitemapGenerator::Sitemap.ping_search_engines