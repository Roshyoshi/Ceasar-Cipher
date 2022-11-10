def ceasar_cipher(string, factor)
  chars = string.split("")
  chars =chars.map do |char|
    is_letter = false
    diff = 0
    num = char.ord
    if num >= 65 && num <= 90
      is_letter = true
    elsif num >= 97 && num <= 122
      is_letter = true
      num = char.ord - 32
      diff = 32
    end

    if is_letter
      current = factor
      until current == 0
        if num == 90
          num = 65
        else 
          num += 1
        end
        current -= 1
      end
    end

    num += diff
    num.chr
  end
  chars.join
  
end

puts ceasar_cipher("What a string!", 5)
