//
//  ProfileView.swift
//  FinalProject
//
//  Created by user223537 on 11/20/22.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var gameState:GameState;
    
    var body: some View {
        
        VStack {
            Text("This Art Thou")
            HStack {
                Text("Character Name: \(gameState.characterName!)");
                Text("Character Class: \(gameState.characterClass!)");
                Text("Character Strength: \(gameState.characterStr!)");
                Text("Character Agility: \(gameState.characterAgi!)");
                Text("Character Strength: \(gameState.characterInt!)");
                Text("Character Max HP: \(gameState.characterHealth!)");
                Text("Character Current HP: \(gameState.characterCurrentHealth!)");
            }
            HStack {
                Text("Don't like what you see?")
                Button("Return to Chargen") {
                    gameState.viewState = 0;
                }
                Text("Otherwise...")
                Button("Carry on.") {
                    gameState.viewState = 2;
                }
            }
        }
        
        
        
    }
}
