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
  if coupons[0] != " " && coupons[0] != false && coupons[0] != nil
    coupon = coupons[0]
    item = coupon[:item] 
    with_coupon = "#{item} W/COUPON"
  if cart.has_key?(coupon[:item]) && !cart.has_key?("#{with_coupon}")
    cart[with_coupon] = {
      price: coupon[:cost] / coupon[:num],
      clearance: cart["#{item}"][:clearance],
      count: coupon[:num]
    }
    cart["#{item}"][:count] -= coupon[:num]
    coupons.shift
    if coupons.length >= 1
      apply_coupons(cart, coupons)
    end
  elsif cart.has_key?("#{with_coupon}")
    cart[with_coupon][:count] += coupon[:num]
    cart["#{item}"][:count] -= coupon[:num]
  end
end
cart
end

def apply_clearance(cart)
  cart.each do |(key, value)|
  end
end

def checkout(cart, coupons)
  # code here
end
