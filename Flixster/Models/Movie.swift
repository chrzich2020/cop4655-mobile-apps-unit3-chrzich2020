//
//  Movie.swift
//  Flixster
//
//  Created by Colin Hrzich on 9/11/23.
//

import Foundation
//Movie Model Struct
struct Movie {
    let movieTitle: String
    let movieDesc: String
    let artworkUrl100: URL
    let voteAvg: String
    let voteCount: String
    let popular: String
}

//Extension with data given
extension Movie {

    /// An array of mock movies
    static var mockMovie: [Movie]  = [
        Movie(movieTitle: "Meg 2: The Trench", movieDesc: "An exploratory dive into the deepest depths of the ocean of a daring research team spirals into chaos when a malevolent mining operation threatens their mission and forces them into a high-stakes battle for survival.", artworkUrl100: URL(string:"https://image.tmdb.org/t/p/w500//4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg")!, voteAvg: "7", voteCount: "1595", popular: "5133.953"),
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}






