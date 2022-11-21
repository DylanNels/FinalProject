//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by user223537 on 10/16/22.
//

import SwiftUI

class GameState: ObservableObject {
    @Published var viewState:Int;
    @Published var characterName:String?;
    @Published var characterClass:String?;
    @Published var characterStr:Int?;
    @Published var characterInt:Int?;
    @Published var characterAgi:Int?;
    @Published var characterHealth:Int?;
    @Published var characterCurrentHealth:Int?;
    
    init(viewState:Int) {
        self.viewState = viewState;
    }
    
}

@main
struct FinalProjectApp: App {
    @ObservedObject var gameState:GameState = GameState(viewState: 0);
    var body: some Scene {
        WindowGroup {
            if (gameState.viewState == 0) {
                ContentView().environmentObject(gameState);
            } else if (gameState.viewState == 1) {
                ProfileView().environmentObject(gameState);
            } else if (gameState.viewState == 2) {
                PlayView().environmentObject(gameState);
            }
        }
    }
}
