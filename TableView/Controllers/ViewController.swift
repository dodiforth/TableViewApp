//
//  ViewController.swift
//  TableView
//
//  Created by Dowon Kim on 24/07/2023.
//

import UIKit

// ⭐️You have to conform UITableViewDataSource when you need to use Table View -> and add protocol subs as well to conform.
class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //var movieArray: [Movie] = []
    
    var movieDataManager = DataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ❗️"self" of this code means ViewController
        tableView.dataSource = self
        // cell's height in tableView
        tableView.rowHeight = 120
        
        tableView.delegate = self
        
        movieDataManager.makeMovieData()
        //movieArray = movieDataManager.getMovieData()
        movieDataManager.movieDataArray
    }

}

extension ViewController: UITableViewDataSource {
    // ⭐️to conform to UITableViewDataSource 1/2
    // - How many contents that Table View should obtain?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        return movieDataManager.getMovieData().count
    }
    
    // ⭐️to conform to UITableViewDataSource 2/2
    // - Put a detail on every each cells
    // This method draw TableView's Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = movieDataManager.getMovieData()[indexPath.row]
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
        cell.selectionStyle = .none
         
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetail", sender: indexPath)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetail"{
            
            let detailVC = segue.destination as! DetailViewController
            let array = movieDataManager.getMovieData()
            
            let indexPath = sender as! IndexPath
            
            detailVC.movieData = array[indexPath.row] // A data that we want to pass in
            
        }
        
        
    }
    
}
