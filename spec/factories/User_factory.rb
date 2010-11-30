# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :user do |f|
  f.email "foo_user@domail.tld"
  f.password "secret"
end
