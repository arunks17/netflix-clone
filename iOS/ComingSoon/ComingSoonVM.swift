//
//  ComingSoonVM.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 04/10/22.
//

import Foundation


class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
