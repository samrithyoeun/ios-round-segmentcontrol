//
//  ViewController.swift
//  ios-round-segmentcontrol
//
//  Created by Samrith Yoeun on 8/6/20.
//  Copyright © 2020 Sammi Yoeun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSegmentControl()
    }

       func setupSegmentControl() {
            view.backgroundColor = .black
            let segmentedControl = TwicketSegmentedControl()
            let segmentedControlHeight: CGFloat = 35
            
            segmentedControl.frame = CGRect(x: 20,
                                            y: 100,
                                            width: UIScreen.main.bounds.width - 40,
                                            height: segmentedControlHeight)
            
            segmentedControl.layer.cornerRadius = segmentedControlHeight / 2
            segmentedControl.setSegmentItems(["Testing 1", "Testing 2"])
            self.view.addSubview(segmentedControl)
            segmentedControl.backgroundColor = .segmentBackgroundColor
            
            segmentedControl.segmentsBackgroundColor = .segmentBackgroundColor
    //        segmentedControl.segmentsBackgroundColor = .red
            segmentedControl.defaultTextColor = .segmentTextColor
            segmentedControl.highlightTextColor = .trueColorbrand
            segmentedControl.sliderBackgroundColor = .white
            
            segmentedControl.clipsToBounds = true
        }
}
