//
//  Posters.swift
//  Flixster
//
//  Created by Tara Hrzich on 9/18/23.
//

import Foundation

struct Poster: Decodable {
    let original_title: String
    let overview: String
    let poster_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
    let backdrop_path: URL
}


struct PosterSearchResponse: Decodable {
    let results: [Poster]
}
