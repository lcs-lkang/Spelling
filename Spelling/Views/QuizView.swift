//
//  QuizView.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import SwiftUI



struct QuizView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!
    
    
    @State var userGuess = ""
    
    
    @State var currentOutcome: Outcome = .undetermined
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            
            
            HStack {
                TextField("Enter name of the item",     text: $userGuess)
                    .padding()
                
                Text(currentOutcome.rawValue)
            }
            .padding(.horizontal)
            HStack {
                Spacer()
            }
            
            HStack {
                Spacer()
                Button(action: {
                    checkGuess()
                    //                Check Guessed word
                }, label: {
                    
                    Text("Submit")
            })
            }
        }
        

    }
    
    // MARK colon functions
    func checkGuess() {
        if userGuess == currentItem.word {
            print("correct")
            currentOutcome = .correct
        } else {
            print("Incorrect")
            currentOutcome = .incorrect
        }
        
    }
}


#Preview {
    QuizView()
}


