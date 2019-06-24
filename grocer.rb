require 'pry'

def consolidate_cart(cart)
  result = {}
  cart.each do |item|
    item.each do |(key, value)|
      if result.include?(key) == false
        value[:count] = 1
        result[key] = value
      else
        result[key][:count] += 1
      end
    end
  end
result
end

def apply_coupons(cart, coupons)
 coupon = coupons[0]
 if cart.has_key?(coupon[:item]) && coupon[:num] ==
    cart[coupon[:item]][:count]
    with_coupon = "#{coupon[:item]} W/COUPON"
    cart[with_cupon] = cart[coupon[:item]]
 end
p cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
