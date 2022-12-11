//
//  CardSelectionVC.swift
//  cardworkout
//
//  Created by Jim Wu on 12/11/22.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet var cardimageView: UIImageView!
    var cards : [UIImage] = Card.allValue
    var timer: Timer!
    
    //----------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
    }
    
    
    //----------------------
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage(){
        cardimageView.image=cards.randomElement() ?? UIImage(named: "AS")
    }
    
    
    
    //----------------------
    
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer.invalidate()
    }
    @IBAction func restartButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        startTimer()
    }
    
    
}
