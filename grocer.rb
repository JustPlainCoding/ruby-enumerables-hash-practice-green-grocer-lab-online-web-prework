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
 result = "No Match!"
 if cart.has_key?(coupon[:item]) && coupon[:num] == cart[coupon[:item]][:count]
  result = "Match!"
 end
p "#{result}"
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
