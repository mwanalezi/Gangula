Factory.define :carreira do |f|
  f.sequence(:titulo) { |n| "foo#{n}" }
  f.sequence(:descricao) { |n| "bar#{n}" }
 end
