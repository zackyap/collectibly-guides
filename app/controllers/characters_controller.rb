class CharactersController < ApplicationController

  def index
  end

  def starlord
    @title = "Star-Lord Collectibles Guide"
    @description = 'Self-proclaimed "Star-Lord", Peter Quill is a half-human who was abducted from Earth at a young age and left stranded in space ever since, building up a reputation as a notorious (or so he claims) intergalactic outlaw.'
    @url = gotg_starlord_guide_url + "?utm_source=facebook&utm_medium=opengraph-share&utm_campaign=facebook-og-actions"
    @image = "https://s3.amazonaws.com/Collectibly-Marketing/Images/StarLordBlock3.jpg"

    set_meta_tags :og => {
      :title => @title, 
      :url  => @url,
      :description => @description,
      :image => @image
    }
    set_meta_tags :twitter => {
      :card => "photo",
      :site => "@collectibly",
      :title => @db_item.name, 
      :url => @url,
      :description => @description,
      image: @image
    }
  end

  def rocketraccoon
  end

  def groot
  end

  def gamora
  end

  def drax
  end

  def ships
  end

  def stgcc2014
    @title = "STGCC2014 Exclusives Collectible Guide"
    @description = 'Here is the definitive guide to the list of STGCC 2014 exclusive collectible any true collector must check out!'
    @url = stgcc2014_guide_url + "?utm_source=facebook&utm_medium=opengraph-share&utm_campaign=facebook-og-actions"
    @image = "https://s3.amazonaws.com/Collectibly-Marketing/STGCC/STGCC2014FBOG.jpg"

    set_meta_tags :og => {
      :title => @title, 
      :url  => @url,
      :description => @description,
      :image => @image
    }
    set_meta_tags :twitter => {
      :card => "photo",
      :site => "@collectibly",
      :title => @title, 
      :url => @url,
      :description => @description,
      image: @image
    }
  end

end