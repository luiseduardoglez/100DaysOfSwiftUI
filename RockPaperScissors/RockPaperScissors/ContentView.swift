//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Luis Eduardo Gonzalez on 2020-06-25.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let moves = ["Rock", "Paper", "Scissors"]
    @State private var round = 0
    @State private var appChoice = Int.random(in: 0...2)
    @State private var playerShouldWin = Bool.random()
    @State private var score = 0
    @State private var finishGame = false

    var body: some View {
        VStack {
            VStack {
                Text("Score: \(score)")
                    .font(.headline)
                Spacer()
                Text("App's Choose: \(moves[appChoice])")
                    .font(.headline)
                    .fontWeight(.bold)
                Text("\(playerShouldWin ? "You Should Win" : "I Should Win")")
                    .font(.callout)
                Spacer()
            }
            Spacer()
            HStack {
                ForEach(moves, id: \.self) { move in
                    Button(action: {
                        self.checkAnswer(move)
                    }) {
                        Text(move)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .alert(isPresented: $finishGame) {
                Alert(title: Text("GAME FINISHED"), message: Text("Score \(score)"), dismissButton: .default(Text("Restart")) {
                    self.score = 0
                    self.round = 0
                    self.appChoice = Int.random(in: 0...2)
                    self.playerShouldWin = Bool.random()
                    })
            }
        }
    }

    func checkAnswer(_ answer: String) {
        let appMove = moves[appChoice]
        var playerWon = false

        if appMove == answer {
            return
        }

        if playerShouldWin {
            switch appMove {
            case "Rock":
                playerWon = answer == "Paper"
            case "Paper":
                    playerWon = answer == "Scissors"
            case "Scissors":
                    playerWon = answer == "Rock"
            default:
                playerWon = false
            }
        } else {
            switch appMove {
            case "Rock":
                playerWon = answer == "Scissors"
            case "Paper":
                    playerWon = answer == "Rock"
            case "Scissors":
                    playerWon = answer == "Paper"
            default:
                playerWon = false
            }
        }

        score += playerWon ? 1 : -1
        if round >= 10 {
            finishGame = true
        } else {
            round += 1
            appChoice = Int.random(in: 0...2)
            playerShouldWin = Bool.random()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
