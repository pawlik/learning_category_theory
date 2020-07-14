puts <<STR
Implement, as best as you can, the identity function in your
favorite language
STR

id = lambda { |x| x }

puts id.(1)
puts id.("yes")

puts <<STR
2. Implement the composition function in your favorite language. It
takes two functions as arguments and returns a function that is
their composition.
STR

# single args for simplicity
compose = lambda do |f1, f2|
  lambda { |x| f1.(f2.(x)) }
end

get_type = lambda do |x|
  x.class
end

typeof_after_id = compose.(
  get_type, id
)

print '> typeof_after_id.("123") => '
puts typeof_after_id.("123")

puts <<STR
3.Write a program that tries to test that your composition function
respects identity.
STR

id_after_typeof = compose.(
  id, get_type
)

test_composition = lambda do |f1, f2, object|
  compose.(f1, f2).(object) == compose.(f2, f1).(object)
end

[1, 7, 42, "yes", true, nil].each do |object|
  puts test_composition.(id, get_type, object)
end
