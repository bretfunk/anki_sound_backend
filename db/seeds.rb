EMAIL = ['john@beatles.com', 'paul@beatles.com', 'george@beatles.com', 'ringo@beatles.com']
PHRASES = ['Help', 'Elenor Rigby', 'I want to hold your hand', 'All you need is love', 'Dr. Robert', 'Buffalo Bill', 'Abby Road', 'Blue Jay Way']
EMAIL.map do |email|
  new_user = User.create(email: email, password: "Test")
  3.times { new_user.phrases << Phrase.create(phrase: PHRASES.sample, language: "English") }
end





