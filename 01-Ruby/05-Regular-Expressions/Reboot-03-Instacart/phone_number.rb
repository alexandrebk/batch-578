def french_phone_number?(phone_number)
  phone_number.match?/^(0|\+33)(\s|-)?[1-9](\s|-)?(\d{2}(\s|-)?){4}$/
end

french_phone_number?("0665363636")
#=> true

french_phone_number?("06 65 36 36 36")
#=> true

french_phone_number?("01 36 65 36 65")
#=> true

french_phone_number?("06 65 36 36")
#=> false
