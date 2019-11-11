class PagesController < ApplicationController
  def home
    @restaurants = {
      1 => {name: 'McDonalds', address: 'Qualquer esquina'},
      2 => {name: 'Burger King', address: 'Qualquer outra esquina'}
    }
  end

  def contact

  end

  def show
    @restaurants = {
      1 => {name: 'McDonalds', address: 'Qualquer esquina'},
      2 => {name: 'Burger King', address: 'Qualquer outra esquina'}
    }

    @restaurant = @restaurants.find do |key, value|
      key == params[:banana].to_i
    end

    @restaurant = @restaurant[1]

  end

  def search
    # params["restaurant_name"] => what the user typed
    @restaurants = {
      1 => {name: 'McDonalds', address: 'Qualquer esquina'},
      2 => {name: 'Burger King', address: 'Qualquer outra esquina'}
    }

    @selected_restaurants = @restaurants.select do |key, restaurant|
      restaurant[:name] == params["restaurant_name"]
    end
  end
end
