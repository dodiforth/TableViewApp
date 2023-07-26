//
//  DataManager.swift
//  TableView
//
//  Created by Dowon Kim on 25/07/2023.
//

import UIKit

class DataManager {
    
    var movieDataArray: [Movie] = []
    
    func makeMovieData() {
        movieDataArray = [
            Movie(movieImage: UIImage(named: "batman.png"), movieName: "The Batman", movieDescription: "Lorem ipsum1"),
            Movie(movieImage: UIImage(named: "blackpanther.png"), movieName: "Black Panther", movieDescription: "Lorem ipsum2"),
            Movie(movieImage: UIImage(named: "captain.png"), movieName: "Captain America: The First Avenger", movieDescription: "Lorem ipsum3"),
            Movie(movieImage: UIImage(named: "doctorstrange.png"), movieName: "Doctor Strange", movieDescription: "Lorem ipsum4"),
            Movie(movieImage: UIImage(named: "guardians.png"), movieName: "Guardians of the Galaxy", movieDescription: "Lorem ipsum5"),
            Movie(movieImage: UIImage(named: "hulk.png"), movieName: "The Incredible Hulk", movieDescription: "Lorem ipsum6"),
            Movie(movieImage: UIImage(named: "ironman.png"), movieName: "Ironman", movieDescription: "Lorem ipsum7"),
            Movie(movieImage: UIImage(named: "spiderman.png"), movieName: "Spiderman : Homecoming", movieDescription: "Lorem ipsum8"),
            Movie(movieImage: UIImage(named: "thor.png"), movieName: "Thor", movieDescription: "Lorem ipsum9")
        ]
    }
    
    func getMovieData() -> [Movie] {
        return movieDataArray
    }
    
    func updateMovieData() {
        let movie = Movie(movieImage: UIImage(named: "marvel"), movieName: "An upcoming", movieDescription: "Lorem UPsum")
        movieDataArray.append(movie)
    }
    
}
