if User.all.empty?
  User.create!(
    email: 'localhost@localhost.com',
    password: 'password',
    password_confirmation: 'password'
  )
end