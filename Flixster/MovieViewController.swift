//
//  ViewController.swift
//  Flixster
//
//  Created by Colin Hrzich on 9/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movies = Movie.mockMovie
        print(movies)
        // Do any additional setup after loading the view.
    }


}

