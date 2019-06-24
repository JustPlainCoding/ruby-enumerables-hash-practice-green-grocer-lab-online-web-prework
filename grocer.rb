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
  puts coupons
  if coupons[0] != " " && coupons[0] != false && coupons[0] != nil
    coupon = coupons[0]
  if cart.has_key?(coupon[:item]) && !cart.has_key?("#{coupon[:item]} W/COUPON")
    item = coupon[:item] 
    with_coupon = "#{item} W/COUPON"
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
  elsif cart.has_key?("#{coupon[:item]} W/COUPON")
    cart["#{coupon[:item]} W/COUPON"][:count] += coupon[0][:num]
    cart["#{item}"][:count] -= coupon[0][:num]
  end
end
cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
