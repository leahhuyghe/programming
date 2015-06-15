class CategoriesController < ApplicationController
  before_action :find_category, except: [:index, :new, :create]

   def index
     @categories = Category.all
   end

   def create
   end

   def show
   end

   def edit
   end

   def update
   end

   def destroy
   end

   private

   def
    find category = Category.find params[:id] 
   end

end
