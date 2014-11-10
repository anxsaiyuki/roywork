class MainController < ApplicationController

  
  def index
    @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
  end
  

  def category
      @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
      @category = Category.find_by_title_en(params[:title_en])
  end
    
  def category_list
      @category_list = Category.all
  end
    
  def category_add
      category = Category.new(title_en: params[:title_en], title_ch: params[:title_ch], content: "", category: params[:category], parent: params[:parent])
      category.save

      respond_to do |format|
          format.js
      end
  end
    
  def category_remove
      @category = Category.find(params[:id])
      @category.destroy
      
      respond_to do |format|
          format.js
      end
  end
    
  def category_edit
      @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
      @category = Category.find_by_title_en(params[:title_en])
      p @category
  end
    
  def send_email
      UserMailer.welcome_email("anxsaiyuki@gmail.com").deliver
      respond_to do |format|
          format.js
      end
  end
    
  def royemail
      UserMailer.welcome_email("anxsaiyuki@gmail.com").deliver
      format.json { 
        render json: "test"
      }
  end
    
  def category_update
      p "================================="
      p params[:content]
      Category.find_by_title_en(params[:title_en]).update_attributes(content: params[:content])
      respond_to do |format|
          format.js
      end
  end
    
  def room1
      @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
  end

  def room2
      @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
  end

  def room3
      @category_list = Category.select("title_en, title_ch").uniq.where(category: "main")
  end
    
end
