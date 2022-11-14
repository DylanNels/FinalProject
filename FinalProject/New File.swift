//
//  New File.swift
//  FinalProject
//
//  Created by user223537 on 11/6/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var gameState:GameState;
    var body: some View {
        VStack {
            Text("This Shall Be Thou");
            HStack {
                Text("Character Name: \(gameState.characterName!)");
            }
            HStack {
                Text("Character Class: \(gameState.characterClass!)");
            }
            HStack {
                Text("Character Strength: \(gameState.characterStr!)");
            }
            HStack {
                Text("Character Intelligence: \(gameState.characterInt!)");
            }
            HStack {
                Text("Character Agility: \(gameState.characterAgi!)");
                }
            HStack {
                Text("Character Health: \(gameState.characterCurrentHealth!)");
            }
            
            Text("Don't like your your profile?");
            
            HStack {
                Button("Return too Chargen"){
                    gameState.viewState = 0;
                }
            }
            
            Text("Otherwise...");
            
            
            
        }
    }
}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
