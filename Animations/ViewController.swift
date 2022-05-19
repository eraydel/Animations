//
//  ViewController.swift
//  Animations
//
//  Created by Erick Ayala Delgadillo on 17/05/22.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    var segmentedControl = UISegmentedControl(items: ["Delivery" , "Drums" , "Coffee"])
    var tmpAnimation: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.frame = CGRect(x: 10, y: 70, width: view.bounds.width-20, height: 40)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        // Add function to handle Value Changed events
        segmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
       
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!){
        
        tmpAnimation?.removeFromSuperview()
        
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                let delivery = LoaderView(animationName: "delivery")
                delivery.animation?.frame.size = CGSize(width: 400, height: 400)
                delivery.animation?.center = self.view.center
                tmpAnimation = delivery.animation!
                self.view.backgroundColor = .red
                titulo.text = "¡Delivery time!"
            case 1:
                let drummer = LoaderView(animationName: "drummer")
                drummer.animation?.frame.size = CGSize(width: 400, height: 400)
                drummer.animation?.center = self.view.center
                tmpAnimation = drummer.animation!
                self.view.backgroundColor = .green
                titulo.text = "¡Play the drums!"
            case 2:
                let coffee = LoaderView(animationName: "coffee")
                coffee.animation?.frame.size = CGSize(width: 400, height: 400)
                coffee.animation?.center = self.view.center
                tmpAnimation = coffee.animation!
                self.view.backgroundColor = .blue
                titulo.text = "¡Coffe time!"
            default:
            
                break
            }
        
        self.view.addSubview(tmpAnimation!)
        
    }
    
}

