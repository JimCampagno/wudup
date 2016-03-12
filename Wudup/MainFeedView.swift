//
//  MainFeedView.swift
//  Wudup
//
//  Created by Jim Campagno on 3/12/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class MainFeedView: UIView {
    
    //MARK: Properties
    @IBOutlet var mainFeedView: UIView!
    
    
    //MARK: Init Methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        //TODO: Setup any properties?
        
        NSBundle.mainBundle().loadNibNamed("MainFeedView", owner: self, options: nil)
        self.addSubview(mainFeedView)
        setupConstraintsOfMainFeedView()
    }
    
}

//MARK: Setup of View Objects
extension MainFeedView {
    
    private func setupConstraintsOfMainFeedView() {
        mainFeedView.translatesAutoresizingMaskIntoConstraints = false
        mainFeedView.removeConstraints(mainFeedView.constraints)
        mainFeedView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        mainFeedView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        mainFeedView.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
        mainFeedView.rightAnchor.constraintEqualToAnchor(self.rightAnchor).active = true
    }
    
}

//MARK: Testing Stuff
extension MainFeedView {
    
    
}

