import Foundation


// Hello!
print("Hello Wisconsin!")


// Variables
var bae = "Calvin Harris"
print("\(bae) is super cute.")
bae = "Tom Hiddleston"
print("\(bae) is much cuter.")

// Constants
let bff = "Karlie"
print("My bff \(bff) is the best.")

// Specifying a variable type
var catCount: Int = 2
print("I currently have \(catCount) cats.")


// Emoji and characters
let kitties = "🐱🐈😸😻"
print(kitties)
// 🐱🐈😸😻

let title = "🎵 Shake it off"
print("Title has \(title.characters.count) chars")
// Title has 14 chars

let 🐱 = "Meredith Gray"
// Singletons: API.☁️.GET()


// Optionals
var currentHit: String? = nil
currentHit = "Shake it off"

print("Current hit is: \(currentHit)")
// Current hit is: Optional("Shake it off")

// Forced unwrapping
print("Current hit is: \(currentHit!)")
// Current hit is: Shake it off


// Optional chaining
func playHit(currentHit: String?) {
    if let hit = currentHit {
        print("🎶 \(hit) 🎶")
    } else {
        print("No hit right now.")
    }
}

playHit(currentHit: nil)
// No hit right now.

playHit(currentHit: "Shake it off")
// 🎶 Shake it off 🎶


// Optional chaining
func playHit(currentHit: String?, notes: String?) {
    if let hit = currentHit, let notes = notes {
        print("\(notes) \(hit) \(notes)")
    }
}

playHit(currentHit: "Blank Space", notes: "🎵")
// 🎵 Blank Space 🎵

playHit(currentHit: "Bad Blood", notes: "☠️")
// ☠️ Bad Blood ☠️


// Optional chaining
func playHitLouder(currentHit: String?) {
    if let loudHit = currentHit?.uppercased() {
        print("🔊🎶 \(loudHit) 🔊🎶")
    }
}

playHitLouder(currentHit: "We are never ever getting back together")
// 🔊🎶 WE ARE NEVER EVER GETTING BACK TOGETHER 🔊🎶


// the _
var cat: String? = "Olivia"
if let _ = cat {
    print("🐱 meow meow!")
}


// Array
let awards: [String] = [
    "Academy of Country Music",
    "AMA",
    "Academy of Country Music",
    "Grammy",
    "Billboard",
    "MTV",
    "Grammy",
]
// ... obviously not a complete list

// Set
let exes: Set<String> = [
    "Joe Jonas",
    "Taylor Lautner",
    "Jake Gyllenhaal",
    "John Mayer",
    "Harry Styles",
    "Calvin Harris"
]
// ... obviously not a complete set

// Dictionary
var squadPushupGoals: [String: Int] = [
    "Karlie Kloss": 17,
    "Selena Gomez": 12,
    "Gigi Hadid": 16,
    "Lena Dunham": 25,
    "Hailee Steinfeld": 20,
    "Ed Sheeran": 10
]
// ... obviously not a complete dictionary


// Loops
for ex in exes {
    // Lame in no particular order
    print("My ex \(ex) is lame.")
}
/* My ex John Mayer is lame.
 My ex Calvin Harris is lame.
 My ex Joe Jonas is lame.
 My ex Harry Styles is lame.
 My ex Jake Gyllenhaal is lame.
 My ex Taylor Lautner is lame. */

// Looping over a dictionary
for (bff, goal) in squadPushupGoals {
    print("\(bff)'s pushup goal is \(goal).")
}
/* Lena Dunham's pushup goal is 25.
 Ed Sheeran's pushup goal is 10.
 Karlie Kloss's pushup goal is 17.
 Selena Gomez's pushup goal is 12.
 Gigi Hadid's pushup goal is 16.
 Hailee Steinfeld's pushup goal is 20. */

// Looping over values
var total = 0
for goal in squadPushupGoals.values {
    total += goal
}
print("Our squad goal is \(total) pushups.")
// Our squad goal is 100 pushups.

// isEmpty
if squadPushupGoals.isEmpty {
    print("No way, my squad always has goals.")
} else {
    print("Go! 🎉")
}

// Classes
class MediaItem {
    var name: String
    
    // Initializer
    init(name: String) {
        self.name = name
    }
    
    // Deinitializer
    deinit {
        print("Deinitialize!")
    }
}


// Subclasses
class Song: MediaItem {
    var albumName: String
    
    init(name: String, albumName: String) {
        self.albumName = albumName
        super.init(name: name)
    }
}

class Movie: MediaItem {
    var role: String
    
    init(name: String, role: String) {
        self.role = role
        super.init(name: name)
    }
}

// MediaItem array
let works: [MediaItem] = [
    Song(name: "Fifteen", albumName: "Fearless"),
    Movie(name: "Valentine's Day", role: "Felicia"),
    Song(name: "Blank Space", albumName: "1989"),
    Song(name: "Shake it Off", albumName: "1989")
]
// Type checking
for work in works {
    if work is Song {
        print("\(work.name) is a song.")
    } else if work is Movie {
        print("\(work.name) is a movie.")
    }
}
// Fifteen is a song.
// Valentine's Day is a movie.
// Blank Space is a song.
// Shake it Off is a song.


// Type casting
for work in works {
    if let song = work as? Song {
        // Blank Space is on 1989
        print("\(song.name) is on \(song.albumName)")
    } else if let movie = work as? Movie {
        // Felicia in Valentine's Day
        print("\(movie.role) in \(movie.name)")
    }
}
// Fifteen is on Fearless
// Felicia in Valentine's Day
// Blank Space is on 1989
// Shake it Off is on 1989


// Enumerations
enum DanceStyle {
    case ballet
    case hiphop
    case jazz
    case cheerleader
    case robot(name: String)
}


// Switch
print("My dancing is...")

var currentDancing = DanceStyle.ballet

switch currentDancing {
case DanceStyle.ballet:
    print("graceful")
case DanceStyle.hiphop:
    print("dope")
case DanceStyle.jazz:
    print("cool")
case DanceStyle.cheerleader:
    print("rah rah")
case DanceStyle.robot:
    print("bleep bloop")
}
// My dancing is...
// graceful

// Switch...
// break, variables, fallthrough, default
currentDancing = DanceStyle.robot(name:"Dave")
switch currentDancing {
case DanceStyle.jazz:
    print("boop boop boop.")
case DanceStyle.ballet:
break // do nothing
case DanceStyle.robot(let name):
    print("Hello, \(name).")
case DanceStyle.cheerleader:
    print("Won't you come over here baby, we can ")
    fallthrough
default:
    print("shake shake shake.")
}
// Hello, Dave.


// Guard
func beachTime(bae: String?) {
    guard let bae = bae else {
        print("No pics needed.")
        return
    }
    print("Take Instagram with my bae \(bae)!")
}
beachTime(bae: nil)
// No pics needed.
beachTime(bae: "Tom")
// Take Instagram with my bae Tom!


// Error handling
enum Problem: ErrorProtocol {
    case badBlood
    case bulletHoles
    case deepCut
}

func madLove() throws {
    throw Problem.badBlood
}

do {
    try madLove()
} catch Problem.badBlood {
    print("We've got bad blood!")
} catch {
    print("We've got a problem.")
}


// Ternary operator
let grammyCount = 29
let plural = grammyCount == 1 ? "" : "s"
print("I won \(grammyCount) Grammy\(plural)!")
// I won 29 Grammys!


// Nil coalescing operator
let defaultHairColor: String = "blond"

var dyedHairColor: String? = nil
var hairColor = dyedHairColor ?? defaultHairColor
print("My hair is currently \(hairColor).")
// My hair is currently blond.

dyedHairColor = "bleach blond"
hairColor = dyedHairColor ?? defaultHairColor
print("My hair is currently \(hairColor).")
// My hair is currently bleach blond.


// Extensions
extension Date {
    // Before Taylor Swift
    func isBTS() -> Bool {
        let year = Calendar.current.component(.year, from: self)
        return year < 1989
    }
}

let now = Date()
if now.isBTS() {
    print("😭")
} else {
    print("😀")
}
// 😀

