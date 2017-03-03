class HomeController < ApplicationController

  def index
    customers = Customer.all
    promos = Promo.all
    parties = Party.all
    orders = Order.all
    @all_data = [customers, promos, parties, orders]
    # view customers
    # view promos
    # view parties
    # view orders
    # view all??? how do you want to view this.  Blocks? Panels?
  end
end
