require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require 'brstring'

Dado /^que estou em (.+)$/ do |page_name|
  Given %{I am on #{page_name}}
end

Quando /^(?:|eu )pressiono em "([^"]*)"$/ do |button|
  When %{I press "#{button}"}
end

Dado /^(?:|eu )defino "([^"]*)" com o valor "([^"]*)"$/ do |campo, value|
  When %{I fill in "#{campo.remover_acentos}" with "#{value}"}
end

Quando /^(?:|eu )seleciono "([^"]*)" em "([^"]*)"$/ do |value, field|
  When %{I select "#{value}" from "#{field}"}
end

Então /^(?:|eu )não devo ver "([^"]*)" mas sim "([^"]*)"$/ do |arg1, arg2|
  Then %{I should not see "#{arg1}"}
  Then %{I should see "#{arg2}"}
end

Dado /^que tenho (as|os) seguintes (.+)$/ do |art, model, table|
 # model = model.gsub(/\s/, '_').singularize
 model = model.remover_acentos
 model =model.split(/\s/i).map{|w| w.singularize}.join('_')
  model_sym = model.to_sym
  table.hashes.each do |hash|
    Factory(model_sym, hash)
  end
end