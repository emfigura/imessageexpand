//
//  LiveView.swift
//  SampleiMessageApp MessagesExtension
//
//  Created by Eric Figura on 12/15/17.
//  Copyright © 2017 Eric Figura. All rights reserved.
//

import UIKit

class LiveView: UIView {

    @IBOutlet weak var label: UILabel!

    var timer: Timer!
    
    @objc func setRandomBackgroundColor() {
        let colors = [
            UIColor(red: 233/255, green: 203/255, blue: 198/255, alpha: 1),
            UIColor(red: 38/255, green: 188/255, blue: 192/255, alpha: 1),
            UIColor(red: 253/255, green: 221/255, blue: 164/255, alpha: 1),
            UIColor(red: 235/255, green: 154/255, blue: 171/255, alpha: 1),
            UIColor(red: 87/255, green: 141/255, blue: 155/255, alpha: 1)
        ]
        let randomColor = Int(arc4random_uniform(UInt32 (colors.count)))
        backgroundColor = colors[randomColor]
    }
    
    func start() {
        label.text = "sadadsdad"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(setRandomBackgroundColor), userInfo: nil, repeats: true)
        setRandomBackgroundColor()
    }

}
