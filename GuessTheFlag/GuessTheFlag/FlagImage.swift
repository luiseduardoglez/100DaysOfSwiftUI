//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Luis Eduardo Gonzalez on 2020-06-07.
//  Copyright © 2020 Luis Eduardo Gonzalez. All rights reserved.
//

import SwiftUI

struct FlagImage: View {
    var image: String

    var body: some View {
        Image(image)
            .renderingMode(.original)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.black, lineWidth: 1))
            .shadow(color: .black, radius: 2)
    }
}

struct FlagImage_Previews: PreviewProvider {
    static var previews: some View {
        FlagImage(image: "UK")
    }
}
