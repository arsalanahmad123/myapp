class StoresController < ApplicationController
  def index
      @categories = Category.all
  end
end
