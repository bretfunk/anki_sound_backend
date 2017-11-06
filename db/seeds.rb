EMAIL = ['john@beatles.com', 'paul@beatles.com', 'george@beatles.com', 'ringo@beatles.com']
PHRASES = ['Help', 'Elenor Rigby', 'Hey Jude', 'Yesterday', 'Penny Lane', 'Blackbird', 'Abby Road', 'She Loves You']
EMAIL.map do |email|
  new_user = User.create(email: email, password: "test")
  3.times { new_user.phrases << Phrase.create(phrase: PHRASES.sample, language: "English") }
  puts("user #{email} created!")
end

User.create(email: 'bret@bret', password: "test")
User.last.phrases << Phrase.first
User.last.phrases << Phrase.last
puts("user #{User.last.email} created!")





