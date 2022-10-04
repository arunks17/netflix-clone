//
//  SmallVerticalButton.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 21/09/22.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    
    var color: Color = Color.white
    
    var isOn: Bool
    
    var imageName: String {
        isOn ? isOnImage : isOffImage
    }
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
                    .foregroundColor(color)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                print("Button Tapped")
            }
        }
    }
}
