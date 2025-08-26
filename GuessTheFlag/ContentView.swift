//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aman Abraham on 8/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy","Monaco", "Nigeria", "Poland", "Spain" ,"UK" , "Ukraine", "US"].shuffled()
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreCount = 0
    
    @State private var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing: 30){
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                        .font(.subheadline.weight(.heavy))
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)  .font(.title.weight(.heavy))

                }
                ForEach(0..<3) { number in
                    Button{
                        flagTapped(number: number)
                    } label: {
                        Image(countries[number])
                            .clipShape(.capsule)
                    }}
                Text("Score is \(scoreCount)")
                    .foregroundStyle(.white)  .font(.title.weight(.heavy))
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue"){
                askQuestion()
            }
        } message: {
                Text("Your score is \(scoreCount)")
            }
    }
    
    func flagTapped(number: Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
            scoreCount += 1
        } else {
            scoreTitle = "Incorrect"
        }
        
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}
    
#Preview {
    ContentView()
}
