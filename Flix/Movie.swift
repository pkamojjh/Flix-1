//
//  Movie.swift
//  Flix
//
//  Created by Anubhav Saxena on 2/13/18.
//  Copyright © 2018 Anubhav Saxena. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    var posterPath: String
    var backdropUrl: URL?
    var baseUrl: String
    var backdropPath: String
    var releaseDate: String
    var description: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        posterPath = dictionary["poster_path"] as! String
        baseUrl = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL (string: baseUrl + posterPath)
        description = dictionary["overview"] as! String
        releaseDate = dictionary["release_date"] as! String
        backdropPath = dictionary["backdrop_path"] as! String
        backdropUrl = URL(string: baseUrl + backdropPath)
        
        // Set the rest of the properties
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
    
}
