puts "Hello Codaisseur"

first_name = "Arkaitz"
last_name = "Garro"

puts "#{first_name} #{last_name}"

tpl = {
    first_name: first_name,
    last_name: last_name
}

puts "%{first_name} %{last_name}" % tpl

puts "#{tpl[:first_name]} #{tpl[:last_name]}"