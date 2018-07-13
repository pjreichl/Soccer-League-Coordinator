let player1: [String : Any] = ["name": "Joe Smith", "height": 42, "experience": true, "guardian": "Jim and Jan Smith"]
let player2: [String : Any] = ["name": "Jill Tanner", "height": 36, "experience": true, "guardian": "Clara Tanner"]
let player3: [String : Any] = ["name": "Bill Bon", "height": 43, "experience": true, "guardian": "Sara and Jenny Bon"]
let player4: [String : Any] = ["name": "Eva Gordon", "height": 45, "experience": false, "guardian": "Wendy and Mike Gordon"]
let player5: [String : Any] = ["name": "Matt Gill", "height": 40, "experience": false, "guardian": "Charles and Sylvia Gill"]
let player6: [String : Any] = ["name": "Kimmy Stein", "height": 41, "experience": false, "guardian": "Bill and Hillary Stein"]
let player7: [String : Any] = ["name": "Sammy Adams", "height": 45, "experience": false, "guardian": "Jeff Adams"]
let player8: [String : Any] = ["name": "Karl Saygan", "height": 42, "experience": true, "guardian": "Heather Bledsoe"]
let player9: [String : Any] = ["name": "Suzanne Greenberg", "height": 44, "experience": true, "guardian": "Henrietta Dumas"]
let player10: [String : Any] = ["name": "Sal Dali", "height": 41, "experience": false, "guardian": "Gala Dali"]
let player11: [String : Any] = ["name": "Joe Kavalier", "height": 39, "experience": false, "guardian": "Sam and Elaine Kavalier"]
let player12: [String : Any] = ["name": "Ben Finkelstein", "height": 44, "experience": false, "guardian": "Aaron and Jill Finkelstein"]
let player13: [String : Any] = ["name": "Diego Soto", "height": 41, "experience": true, "guardian": "Robin and Sarika Soto"]
let player14: [String : Any] = ["name": "Chloe Alaska", "height": 47, "experience": false, "guardian": "David and Jamie Alaska"]
let player15: [String : Any] = ["name": "Arnold Willis", "height": 43, "experience": false, "guardian": "Claire Willis"]
let player16: [String : Any] = ["name": "Phillip Helm", "height": 44, "experience": true, "guardian": "Thomas Helm and Eva Jones"]
let player17: [String : Any] = ["name": "Les Clay", "height": 42, "experience": true, "guardian": "Wynonna Brown"]
let player18: [String : Any] = ["name": "Herschel Krustofski", "height": 45, "experience": true, "guardian": "Hyman and Rachel Krustofski"]

//create comprehensive list of players
let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

//create empty arrays of players, grouped by experience level
var withExperience: [[String: Any]] = []
var noExperience: [[String: Any]] = []

//assign players to arrays based on experience or no experience
for player in players {
    if player["experience"] as? Bool == true {
        withExperience.append(player)
    } else {
        noExperience.append(player)
    }
}

//create empty dictionaries for the three teams
var teamDragons: [[String: Any]] = []
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []

//create variable for teams so it can be used for .count method.  This allows the logic to be used if more teams are added later.
var teams = ["Dragons", "Sharks", "Raptors"]

//variable created to calculate the number of experienced and no experience players per team
var maxCountExperiencedPlayers = withExperience.count / teams.count
var maxCountNoExperiencedPlayers = noExperience.count / teams.count

//logic to assign equal amount of experienced players to teams
for player in withExperience {
    if teamDragons.count < maxCountExperiencedPlayers {
        teamDragons.append(player)
    } else if teamSharks.count < maxCountExperiencedPlayers {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

//logic to assign equal amount of inexperienced players
for player in noExperience {
    if teamDragons.count < maxCountNoExperiencedPlayers + maxCountNoExperiencedPlayers{
        teamDragons.append(player)
    } else if teamSharks.count < maxCountNoExperiencedPlayers + maxCountNoExperiencedPlayers {
        teamSharks.append(player)
    } else {
        teamRaptors.append(player)
    }
}

//create collection of teams letters
var letters: Array<String> = Array()

//constant to store practice date and time
let dragonsPractice = "March 17, 1 PM"
let sharksPractice = "March 17, 3 PM"
let raptorsPractice = "March 18 , 1 PM"


//create letters to be sent to the guardians stating team, and practice date/time
for player in teamDragons {
    if let guardian = player["guardian"], let name = player["name"] {
        let playerLetter: String = "Dear \(guardian), your budding superstar, \(name), will be playing for the \(teams[0]).  Their first practice will be held \(dragonsPractice)."
        letters.append(playerLetter)
        print(playerLetter)
    }
}

for player in teamSharks {
    if let guardian = player["guardian"], let name = player["name"] {
        let playerLetter: String = "Dear \(guardian), your budding superstar, \(name), will be playing for the \(teams[1]).  Their first practice will be held \(sharksPractice)."
        letters.append(playerLetter)
        print(playerLetter)
    }
}

for player in teamRaptors {
    if let guardian = player["guardian"], let name = player["name"] {
        let playerLetter: String = "Dear \(guardian), your budding superstar, \(name), will be playing for the \(teams[2]).  Their first practice will be held \(raptorsPractice)."
        letters.append(playerLetter)
        print(playerLetter)
    }
}

