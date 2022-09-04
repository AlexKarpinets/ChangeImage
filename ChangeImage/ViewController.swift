//
//  ViewController.swift
//  ChangeImage
//
//  Created by Karpinets Alexander on 03.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let squared = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squared.backgroundColor = .green
        view.addSubview(squared)
    }
    
    @IBAction func changeButton(_ sender: UIButton) {
        let image = UIImage(named: "nature")
        imageView.image = image
        
    }
    @IBAction func startTimerButton(_ sender: UIButton) {
        getTimer()
    }
    
    @IBAction func endTimerButton(_ sender: UIButton) {
        stopTimer()
    }
    
    
    func getMove() {
        squared.frame.origin.x += 100
        UIView.animate(withDuration: 0.3) {
            self.squared.frame.origin.x -= 100
            
        }
    }
    func getTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.getMove()
        })
        timer.fire()
    }
    
    func stopTimer() {
        timer.invalidate()
    }
    
}


