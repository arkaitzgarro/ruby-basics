puts "Hello\nCodaisseur"

first_name = "Arkaitz"
last_name = "Garro"

puts "#{first_name} #{last_name}".upcase

tpl = {
    first_name: first_name,
    last_name: last_name
}

puts ("%{first_name} %{last_name}" % tpl).downcase

puts "#{tpl[:first_name]} #{tpl[:last_name]}".downcase.reverse