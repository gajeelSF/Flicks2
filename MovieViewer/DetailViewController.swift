//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by SongYuda on 2/7/17.
//  Copyright © 2017 SongYuda. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var Overview: UILabel!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var infoView: UIView!
    var movie: NSDictionary = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"]
        Overview.text = overview as! String?
        Overview.sizeToFit()
        let infoViewX = infoView.frame.origin.x
        let infoViewY = infoView.frame.origin.y
        let infoViewWidth = infoView.frame.width
        let infoViewHeight = Overview.frame.maxY + (self.tabBarController?.tabBar.frame.height)!
        infoView.frame = CGRect(x: infoViewX, y: infoViewY, width: infoViewWidth, height: infoViewHeight)
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width, height:infoView.frame.origin.y + infoView.frame.size.height + (self.tabBarController?.tabBar.frame.height)!)
        
        let baseUrl = "https://image.tmdb.org/t/p/w342"
        if let posterPath = movie["poster_path"] as? String {
            let imageUrl = NSURL(string: baseUrl + posterPath)
            posterImageView.setImageWith(imageUrl! as URL)
        }
        
        // Do any additional setup after loading the view.
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
