//
//  Episode.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 04/10/22.
//

import Foundation

struct Episode: Identifiable, Hashable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    
    var episodeNumber: Int
    
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
    
}
