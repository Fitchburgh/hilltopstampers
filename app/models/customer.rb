class Customer < ApplicationRecord
  def self.create_customer(params, current_user)
    Customer.new(
      name: params[:name],
      address: params[:address],
      notes: params[:notes],
      last_hosted: params[:last_hosted],
      attendance: params[:attendance]
    )
  end

  def self.view_customer

  end

  def self.edit_customer

  end

  def self.delete_customer

  end
end
