//
//  Trailer.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 04/10/22.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
