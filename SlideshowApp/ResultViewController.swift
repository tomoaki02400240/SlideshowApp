//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 岩本知章 on 2020/04/02.
//  Copyright © 2020 tomoaki.iwamoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var imageImage: UIImage!
    
    
    
    override func viewDidLoad() {
      
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        imageLabel.image = imageImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet weak var imageLabel: UIImageView!
    
}
