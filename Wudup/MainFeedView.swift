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
    @IBOutlet weak var mainStackView: UIStackView!
    @IBOutlet weak var middleBlueView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var leoStackView: UIStackView!
    
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
        
        loadMainFeedViewNib()
        setupAllTheConstraints()
        
        //MARK: doing test stuff
    }
    
    @IBAction func testButton(sender: UIButton) {
        let frame = CGRectMake(0.0, 0.0, middleBlueView.frame.width, 200)
        let newView = UIView(frame: frame)
        newView.backgroundColor = UIColor.redColor()
        mainStackView.addArrangedSubview(newView)
    }
    @IBAction func tapMe(sender: UIButton) {
        UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 10.0, options: [], animations: {
            self.bottomView.hidden = true
            self.topView.hidden = true
            }, completion: nil)
    }
    
    @IBAction func bringMeBack(sender: UIButton) {
        UIView.animateWithDuration(0.8, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 10.0, options: [], animations: {
            self.bottomView.hidden = false
            self.topView.hidden = false
            }, completion: nil)
    }
    
}

//MARK: Setup of View Objects
extension MainFeedView {
    
    private func setupAllTheConstraints() {
        setupConstraintsOfMainFeedView()
        //setupMainStackViewConstraints()
    }
    
    private func setupConstraintsOfMainFeedView() {
        mainFeedView.translatesAutoresizingMaskIntoConstraints = false
        mainFeedView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        mainFeedView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        mainFeedView.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
        mainFeedView.rightAnchor.constraintEqualToAnchor(self.rightAnchor).active = true
    }
    
    private func setupMainStackViewConstraints() {
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.removeConstraints(mainStackView.constraints)
        mainStackView.topAnchor.constraintEqualToAnchor(mainFeedView.topAnchor).active = true
        mainStackView.bottomAnchor.constraintEqualToAnchor(mainFeedView.bottomAnchor).active = true
        mainStackView.leftAnchor.constraintEqualToAnchor(mainFeedView.leftAnchor).active = true
        mainStackView.rightAnchor.constraintEqualToAnchor(mainFeedView.rightAnchor).active = true
    }
    
    private func loadMainFeedViewNib() {
        NSBundle.mainBundle().loadNibNamed("MainFeedView", owner: self, options: nil)
        self.addSubview(mainFeedView)
    }
    
}