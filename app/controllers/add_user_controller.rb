class AddUserController < ApplicationController
  def do_transaction
  end

  def add_buyer
	@buyer = Buyer.new
	@id = params[:id]

  end	

  def main_amount
  
  end


  def add_user_db
  		@buyer = Buyer.new(buyer_params)
  		@flat_id = params[:buyer][:flat_id]
  		@flat = Bhk.find_by_id(@flat_id)  		
  		if @buyer.save
  			@flat.buyer_id = @buyer.id
  			@flat.save
  			redirect_to transactions_add_total_amount_path(:flat_id => @flat_id)
  		end
 
  end	

  def delete_transaction
  end



 def buyer_params
      params.require(:buyer).permit(:name,:address,:mobile_no,:flat_id)
    end
    end