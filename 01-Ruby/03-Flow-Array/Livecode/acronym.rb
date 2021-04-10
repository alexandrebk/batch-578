def acronymize(sentence)
  return "" if sentence == ""

  # split sentence into words in an array
  words = sentence.split
  # find first letter of each word (with index?) (array of letters)
  # capitalize letters

  # 1st way
  letters = []
  words.each do |word|
    letters << word[0].capitalize
  end

  # 2nd way
  # letters = words.map { |word| word[0] }

  # letters = ["S", "N", "C", "F"]

  # join array with dots => into string
  # add  "." at the end
  letters.join(".") + "."

  # or
  # sentence.split.map { |word| word[0].capitalize }.join('.') + '.'

  # return acronym
end

p acronymize("Société Nationales Chemins Fer")

puts acronymize("Société de Nationales Chemins Fer") == "S.N.C.F."
puts acronymize("reseau avancé transport parisien") == "R.A.T.P."
puts acronymize("federal BUREAU invesigation") == "F.B.I."
puts acronymize("BANQUE POPULAIRE") == "B.P."
puts acronymize("") == ""
