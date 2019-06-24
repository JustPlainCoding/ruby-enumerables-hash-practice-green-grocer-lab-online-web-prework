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
 if cart.has_key?(coupon[:item]) && coupon[:num] == cart[coupon[:item]][:count]
  cart["#{coupon[:item]} W/COUPON"][:price] = coupon[:cost] / coupon[:num]
  cart["#{coupon[:item]} W/COUPON"][:clearance] = cart[coupon[:item]][:clearance]
  cart["#{coupon[:item]} W/COUPON"][:count] = coupon[:num]
 end
p cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
