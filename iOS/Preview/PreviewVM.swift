//
//  PreviewVM.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 04/10/22.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
