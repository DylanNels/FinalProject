//
//  PlayPageView.swift
//  FinalProject
//
//  Created by user223537 on 11/20/22.
//

import SwiftUI

struct PlayPageView: View {

    let story: Story
    let pageIndex: Int

    var body: some View {
        VStack {
            ScrollView {
                Text(story[pageIndex].text)
            }
            
            ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                NavigationLink(destination: PlayPageView(story: story, pageIndex: choice.destination)) {
                    Text(choice.text)
                        .multilineTextAlignment(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(Color.gray.opacity(0.25))
                        .cornerRadius(8)
                }
            }
        }
        .padding()
        .navigationTitle("Page \(pageIndex + 1)")
        .navigationBarTitleDisplayMode(.inline)
        }
}
