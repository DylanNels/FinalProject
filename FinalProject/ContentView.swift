//
//  ContentView.swift
//  FinalProject
//
//  Created by user223537 on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    @State var characterName:String;
    @State var selectedClass:Class;
    @EnvironmentObject var gameState:GameState;
    
    enum Class:String, CaseIterable, Identifiable {
        case Warrior;
        case Rogue;
        case Mage;
        
        var id:Self {self}
    }
    
    init(){
        characterName = "";
        selectedClass = Class.Rogue
    }
    
    var body: some View {
        VStack {
            HStack{
                Image("dungeonentrance").resizable().frame(width: 64, height: 64)
                Text("CYOA Adventure").font(.largeTitle).bold();
            }.frame(minWidth: 64, idealWidth: 64, maxWidth: .infinity, minHeight: 64, idealHeight: 64, maxHeight: 64, alignment: .topLeading).background(Color.indigo);
            CustomDivider(color:.indigo, height: 5);
            
            HStack {
                Text("Character Name:").font(.title3).foregroundColor(.indigo).bold();
                TextField("Enter Character Name", text: $characterName);
            }
            
            HStack {
                Text("Character Class:").font(.title3).foregroundColor(.indigo).bold();
                Picker(selection: $selectedClass, label: Text("Character Class")){
                    ForEach(Class.allCases) {casename in Text(casename.rawValue.capitalized);
                    }
                }.pickerStyle(.segmented).colorMultiply(.indigo)
            }
            
            HStack {
                Button("Create Character"){
                    gameState.characterName = characterName;
                    gameState.characterClass = selectedClass.rawValue.capitalized;
                    if (selectedClass == Class.Warrior) {
                        gameState.characterStr = Int.random(in: 8...15);
                        gameState.characterAgi = Int.random(in: 3...7);
                        gameState.characterInt = Int.random(in: 1...5);
                        gameState.characterHealth = Int.random(in: 10...20);
                        gameState.characterCurrentHealth = gameState.characterHealth;
                    }
                    if (selectedClass == Class.Rogue) {
                        gameState.characterStr = Int.random(in: 1...7);
                        gameState.characterAgi = Int.random(in: 8...15);
                        gameState.characterInt = Int.random(in: 4...10);
                        gameState.characterHealth = Int.random(in: 5...10);
                        gameState.characterCurrentHealth = gameState.characterHealth;
                    }
                    if (selectedClass == Class.Mage) {
                        gameState.characterStr = Int.random(in: 1...5);
                        gameState.characterAgi = Int.random(in: 4...9);
                        gameState.characterInt = Int.random(in: 10...21);
                        gameState.characterHealth = Int.random(in: 2...8);
                        gameState.characterCurrentHealth = gameState.characterHealth;
                    }
                    
                    gameState.viewState = 1;
                }.foregroundColor(.indigo)
            }
        }
        Spacer();
    }
}

struct CustomDivider: View {
    var color:Color;
    var height:CGFloat;
    
    init(color:Color, height:CGFloat){
        self.color = color;
        self.height = height;
    }
    
    var body: some View {
        Rectangle().fill(color).frame(height: height).edgesIgnoringSafeArea(.horizontal)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
