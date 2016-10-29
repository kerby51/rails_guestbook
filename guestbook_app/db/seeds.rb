20.times do
  User.create({
    name: FFaker::Name.name,
    email: FFaker::Internet.email,
    city: FFaker::Address.city,
    occupation: FFaker::Job.title,
    entry: FFaker::HipsterIpsum.paragraph
  })
end
