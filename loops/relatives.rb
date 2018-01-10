family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

brothers_and_sisters = family.select do |relation|
  relation == :sisters || relation == :brothers
end

puts brothers_and_sisters.values.flatten
