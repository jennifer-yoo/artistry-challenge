Artist.destroy_all
Instrument.destroy_all
Play.destroy_all

Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create(name: "Guitar", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Flute", classification: "Woodwind")
Instrument.create(name: "Piano", classification: "Percussion")
Instrument.create(name: "Bass", classification: "Strings")
Instrument.create(name: "Violin", classification: "Strings")
Instrument.create(name: "Clarinet", classification: "Woodwind")
Instrument.create(name: "Drum", classification: "Percussion")

12.times do
    Play.create(artist_id: Artist.all.sample.id, instrument_id: Instrument.all.sample.id)
end

p Artist.all.count
p Instrument.all.count
p Play.all.count
puts "Done seeeeeding"