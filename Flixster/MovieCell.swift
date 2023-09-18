//
//  MovieCell.swift
//  Flixster
//
//  Created by Colin Hrzich on 9/11/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.original_title
        movieDescLabel.text = movie.overview
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w300/" + movie.poster_path.absoluteString)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: imageUrl!, into: movieImageView)
    }
    
}
