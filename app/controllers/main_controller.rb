class MainController < ApplicationController

  
  def index
  
  end
  
  def news
     @category = Category.find_by_title_en("news")
  end
    
  def service
    @category = Category.find_by_title_en("service")
  end
  
  def environment
  
  end
    
  def rooms
    @category = Category.find_by_title_en("rooms")
  end
    
  def medteam   
    @category = Category.find_by_title_en("medteam")
  end
    
  def meal
      
  end
    
  def babycare
    @category = Category.find_by_title_en("babycare")
  end
    
  def mommycare
    @category = Category.find_by_title_en("mommycare")
  end
    
  def reservation
    @category = Category.find_by_title_en("reservation")
  end
    
  def contact
      
  end
    
  def links
    @category = Category.find_by_title_en("links") 
  end
    
end
