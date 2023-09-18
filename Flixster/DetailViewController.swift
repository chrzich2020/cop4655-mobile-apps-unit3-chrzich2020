//
//  DetailViewController.swift
//  Flixster
//
//  Created by Colin Hrzich on 9/11/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    @IBOutlet weak var movieAvgLabel: UILabel!
    @IBOutlet weak var movieVoteLabel: UILabel!
    @IBOutlet weak var moviePopLabel: UILabel!
    
    
    
    

    // A property to store the track object.
    // We can set this property by passing along the track object associated with the track the user tapped in the table view.
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w300/" + movie.backdrop_path.absoluteString)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: backdropUrl!, into: movieImageView)

        // Set labels with the associated track values.
        movieTitleLabel.text = movie.original_title
        movieDescLabel.text = movie.overview
        movieAvgLabel.text = String (movie.vote_average)
        movieVoteLabel.text = String (movie.vote_count)
        moviePopLabel.text = String (movie.popularity)


    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
