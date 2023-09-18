//
//  PostersViewController.swift
//  Flixster
//
//  Created by Tara Hrzich on 9/18/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

            // Use the indexPath.item to index into the albums array to get the corresponding album
            let poster = posters[indexPath.item]
        
            let posterUrl = URL(string: "https://image.tmdb.org/t/p/w300/" + poster.poster_path.absoluteString)

            // Load image async via Nuke library image loading helper method
            Nuke.loadImage(with: posterUrl!, into: cell.posterImageView)

            return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var posters: [Poster] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self

        // Create a search URL for fetching albums (`entity=album`)
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=7fe8575d801c504097239b6bf390e8c9")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                do {
                    // Try to parse the response into our custom model
                    let response = try decoder.decode(PosterSearchResponse.self, from: data)
                    let posters = response.results
                    
                    DispatchQueue.main.async {
                        self?.posters = posters
                        self?.collectionView.reloadData()
                    }
                } catch {
                    print(error.localizedDescription)
                }
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
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
