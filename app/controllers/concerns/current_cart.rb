module CurrentCart
  
  private

  def set_cart
    @cart = Cart.find(session[:cart:id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart:id] = @cart.id
  end

end
