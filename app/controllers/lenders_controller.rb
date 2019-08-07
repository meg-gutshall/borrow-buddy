class LendersController < ApplicationController

  # GET /lenders/1
  def show
    @lender = current_lender
  end

end
