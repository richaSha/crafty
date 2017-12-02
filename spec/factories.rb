FactoryBot.define do
  factory(:user) do
    username('Richa')
    email('richa.shaurabh@gmail.com')
    password('richa123')
    password_confirmation('richa123')
  end
end
