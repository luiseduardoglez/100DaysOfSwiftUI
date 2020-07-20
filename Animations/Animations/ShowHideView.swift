//
//  ShowHideView.swift
//  Animations
//
//  Created by Luis Eduardo Gonzalez on 2020-07-20.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct ShowHideView: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {                self.isShowingRed.toggle()
                }
            }

            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ShowHideView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideView()
    }
}
