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
  puts coupons[0]
if coupons[0]
  coupon = coupons[0]
end
 if cart.has_key?(coupon[:item])
    item = coupon[:item] 
    with_coupon = "#{item} W/COUPON"
    cart[with_coupon] = {
      price: coupon[:cost] / coupon[:num],
      clearance: cart["#{item}"][:clearance],
      count: coupon[:num]
    }
    cart["#{item}"][:count] = cart["#{item}"][:count] - coupon[:num]
    coupons.shift
    if coupons.length >= 1
      apply_coupons(cart, coupons)
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
