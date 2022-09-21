//
//  Movie.swift
//  netflix-clone (iOS)
//
//  Created by Arun KS on 21/09/22.
//

import Foundation
import SwiftUI

//enum HomeTopRow: String, CaseIterable {
//    case home = "Home"
//    case tvShows = "TV Shows"
//    case movies = "Movies"
//    case myList = "My List"
//}
//
//enum HomeGenre: String {
//    case AllGenres
//    case Action
//    case Comedy
//    case Horror
//    case Thriller
//}


struct Movie: Identifiable, Hashable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
//    var categories: [String]
//    var genre: HomeGenre = .AllGenres
//
//    // MovieDetail View
//    var year: Int
//    var rating: String
//    var numberOfSeasons: Int?
//
//    // Personalization
//    var currentEpisode: CurrentEpisodeInfo?
//
//    var accentColor: Color = .white
//
//
//    var defaultEpisodeInfo: CurrentEpisodeInfo
//    var creators: String
//    var cast: String
//
//    var moreLikeThisMovies: [Movie]
//
//    var episodes: [Episode]?
//
//    var movieType: MovieType {
//        return episodes == nil ? .movie : .tvShow
//    }
//
//    var promotionHeadline: String?
//
//    var trailers: [Trailer]
//
//    var previewImageName: String
//    var previewVideoURL: URL?
//
//    var numberOfSeasonsDisplay: String {
//        if let num = numberOfSeasons {
//            if num == 1 {
//                return "1 season"
//            } else {
//                return "\(num) seasons"
//            }
//        }
//
//        return ""
//    }
//
//    var episodeInfoDisplay: String {
//        if let current = currentEpisode {
//            return "S\(current.season):E\(current.episode) \(current.episodeName)"
//        } else {
//            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
//        }
//    }
//
//    var episodeDescriptionDisplay: String {
//        if let current = currentEpisode {
//            return current.description
//        } else {
//            return defaultEpisodeInfo.description
//        }
//    }
    
}

//struct CurrentEpisodeInfo: Hashable, Equatable {
//    var episodeName: String
//    var description: String
//    var season: Int
//    var episode: Int
//}
//
//enum MovieType {
//    case movie
//    case tvShow
//}
