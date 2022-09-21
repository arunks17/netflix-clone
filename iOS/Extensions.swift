//
//  Extensions.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 21/09/22.
//

import SwiftUI

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}
