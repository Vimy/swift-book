//: Playground - noun: a place where people can play

import Cocoa

var movieRatings = ["Donnie Darko": 4, "Chungkin Express": 5, "Independence Day": 10]
print("I have rated \(movieRatings.count) movies!")

let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Donnie Darko"] = 5
movieRatings

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"]
{
    print("Old rating: \(lastRating); currentRating: \(currentRating)")
}
movieRatings["The Cabinet of Dr. Caligari"] = 5
movieRatings
movieRatings.removeValue(forKey: "Donnie Darko")
movieRatings

for (key, value) in movieRatings
{
    print("The movie \(key) was rated \(value).")
}

for movie in movieRatings.keys
{
    print("User has rated \(movie)")
}

let immutableDic = ["Grote friet":2.9, "Frikandel":1.5, "Toscaanse saus":1.6]

for (key, value) in immutableDic
{
    print("Marc verkoopt \(key) aan deze prijs: \(value)")
}

let watchedMovies = Array(movieRatings.keys)
print("Hallo, ik keek gisteren naar \(watchedMovies[2])")

var postcodeWestVlaanderen = ["8930","8500", "9400"]
var postcodeOostVlaanderen = ["4545", "7897", "4564"]
var Vlaanderen = ["West-Vlaanderen":postcodeWestVlaanderen, "Oost-Vlaanderen": postcodeOostVlaanderen]

print("De provincie West-Vlaanderen heeft de volgende postcodes: \(postcodeWestVlaanderen)")

print("\(postcodeOostVlaanderen)")


