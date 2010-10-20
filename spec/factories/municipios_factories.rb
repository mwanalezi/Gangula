Factory.define :municipio do |f|
  f.sequence(:nome) { |n| "foo#{n}" }
  f.association :provincia

 end

