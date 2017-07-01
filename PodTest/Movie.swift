//
//  Movie.swift
//  PodTest
//
//  Created by Jakkawad Chaiplee on 6/16/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import Foundation
import Alamofire
class Movie {
    var _title: String!
//    var _year: String!
//    var _rated: String!
//    var _released: String!
//    var _runtime: String!
//    var _genre: String!
//    var _director: String!
//    var _writer: String!
    var _actors: String!
//    var _plot: String!
//    var _language: String!
//    var _country: String!
//    var _awards: String!
    var _poster: String!
    var _ratings: String!
//    var _metascore: String!
//    var _imdbRating: String!
//    var _imdbVotes: String!
//    var _imdbID: String!
//    var _type: String!
//    var _dvd: String!
//    var _boxOffice: String!
//    var _production: String!
//    var _website: String!
//    var _response: String!
    var title: String {
        return _title
    }
//    var year: String {
//        return _year
//    }
//    var rated: String {
//        return _rated
//    }
//    var released: String {
//        return _released
//    }
//    var runtime: String {
//        return _runtime
//    }
//    var genre: String {
//        return _genre
//    }
//    var director: String {
//        return _director
//    }
//    var writer: String {
//        return _writer
//    }
    var actors: String {
        return _actors
    }
    var ratings: String {
        return _ratings
    }
    var poster: String {
        return _poster
    }
    init(movieDict: Dictionary<String, AnyObject>) {
        if let title = movieDict["Title"] as? String {
            self._title = title
//            print(self._title)
        }
        if let poster = movieDict["Poster"] as? String {
            self._poster = poster
        }
    }
}
//"Title":"John Wick",
//"Year":"2014",
//"Rated":"R",
//"Released":"24 Oct 2014",
//"Runtime":"101 min",
//"Genre":"Action, Crime, Thriller",
//"Director":"Chad Stahelski, David Leitch",
//"Writer":"Derek Kolstad",
//"Actors":"Keanu Reeves, Michael Nyqvist, Alfie Allen, Willem Dafoe",
//"Plot":"An ex-hitman comes out of retirement to track down the gangsters that took everything from him.",
//"Language":"English, Russian, Hungarian",
//"Country":"USA, China",
//"Awards":"4 wins & 6 nominations.",
//"Poster":"https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_SX300.jpg",
//"Ratings":[  ],
//"Metascore":"68",
//"imdbRating":"7.3",
//"imdbVotes":"329,074",
//"imdbID":"tt2911666",
//"Type":"movie",
//"DVD":"03 Feb 2015",
//"BoxOffice":"N/A",
//"Production":"LionsGate Entertainment",
//"Website":"http://johnwickthemovie.com/",
//"Response":"True"
