Factory.define :provincia do |f|
  f.sequence(:nome) { |n| "foo#{n}" }
 end
