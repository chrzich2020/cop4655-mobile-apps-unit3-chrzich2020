//
//  Posters.swift
//  Flixster
//
//  Created by Tara Hrzich on 9/18/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}
