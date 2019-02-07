//
//  ViewController.swift
//  rpsGame
//
//  Created by Julio Rivera on 1/25/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rockImageView: UIImageView!
    @IBOutlet weak var paperImageView: UIImageView!
    @IBOutlet weak var sissorsImageView: UIImageView!
    @IBOutlet weak var yourChoice: UIImageView!
    @IBOutlet weak var computersChoice: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    
    
    var allImages: [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         allImages = [rockImageView, paperImageView, sissorsImageView]
        
        
    }

    @IBAction func goAction(_ sender: UIButton) {
       
        //if statements
        //test
        
        randomImagePicker()
    
    }
    
    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
       
        let selectedPoint = sender.location(in: stackView)
        for currentImage in allImages {
            if currentImage.frame.contains(selectedPoint) {
                yourChoice.image = currentImage.image
            }
        }
       }
    
    
    
    func randomImagePicker() {
        var random = arc4random_uniform(3)
        
        switch random {
        case 0:
            computersChoice.image = UIImage(named: "Paper")
        case 1:
            computersChoice.image = UIImage(named: "Scissors")
        default:
            computersChoice.image = UIImage(named: "Rock")
        }
    }

}
