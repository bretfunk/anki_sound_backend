EMAIL = ['john@beatles.com', 'paul@beatles.com', 'george@beatles.com', 'ringo@beatles.com']
PHRASES = ['Help', 'Elenor Rigby', 'I want to hold your hand', 'All you need is love', 'Dr. Robert', 'Buffalo Bill', 'Abby Road', 'Blue Jay Way']
EMAIL.map do |email|
  new_user = User.create(email: email, password: "Test")
  3.times { new_user.phrases << Phrase.create(phrase: PHRASES.sample, language: "English") }
  puts("user #{email} created!")
end

User.create(email: 'bret', password: "test")
User.last.phrases << Phrase.first
User.last.phrases << Phrase.last
puts("user #{User.last.email} created!")





