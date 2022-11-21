//
//  PlayView.swift
//  FinalProject
//
//  Created by user223537 on 11/20/22.
//

import SwiftUI

struct PlayView: View {

    var body: some View {
        NavigationStack {
            PlayPageView(story: story, pageIndex: 0)
        }
    }
}
