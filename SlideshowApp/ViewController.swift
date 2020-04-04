//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 岩本知章 on 2020/04/02.
//  Copyright © 2020 tomoaki.iwamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var startStopButton: UIButton!
    
    
    var imageDisplayArray = ["image1.jpg", "image2.jpg", "image3.jpg"]
    var imageNo = 0
    var image = UIImage(named: "image1.jpg")
    var timer: Timer!
    @IBAction func backAction(_ sender: Any) {
        imageNo -= 1
        display()
    }
    
    @IBAction func nextAction(_ sender: Any) {
        imageNo += 1
        display()
    }
    @IBAction func startStopAction(_ sender: Any) {
        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            backButton.isEnabled = false
            nextButton.isEnabled = false
            startStopButton.setTitle("停止", for: .normal)
        } else if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            backButton.isEnabled = true
            nextButton.isEnabled = true
            startStopButton.setTitle("再生", for: .normal)
            
        }
       
    }
    
    @objc func updateTimer(_ timer:Timer){
        imageNo += 1
        display()
    }
    
    func display(){
        if imageNo > 2 {
            imageNo = 0
        } else if imageNo < 0 {
            imageNo = 2
        }
        let name = imageDisplayArray[imageNo]
        let image = UIImage(named: name)
        imageLabel.image = image
    }
    @IBAction func ontapImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.imageImage = imageLabel.image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageLabel.image = image
    }
   
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }

}

