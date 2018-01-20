//
//  SuperheroDetailViewController.swift
//  Flix
//
//  Created by Anubhav Saxena on 1/17/18.
//  Copyright © 2018 Anubhav Saxena. All rights reserved.
//

import UIKit

class SuperheroDetailViewController: UIViewController {
    
    
    @IBOutlet weak var superbackdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var movie: [String: Any]?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie {
            titleLabel.text = movie[MovieKeys.title] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            descriptionLabel.text = movie["overview"] as? String
            let backdropPathString = movie[MovieKeys.backdropPath] as! String
            let posterPathString = movie[MovieKeys.posterPathString] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            superbackdropImageView.af_setImage(withURL: backdropURL)
            
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
