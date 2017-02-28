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

  def new
    # add customer
    # add promos
    # add party
    # add order
  end

  def edit
    # edit customer
    # edit promos
    # edit parties
    # edit orders
  end

  def delete
    # archive customer
    # archive promos
    # archive parties
    # archive orders
  end
end
