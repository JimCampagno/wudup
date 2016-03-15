//
//  ActivityChooserView.swift
//  Wudup


import UIKit

class ActivityChooserView: UIView {

    //MARK: PROPERTIES
    @IBOutlet var activityChooserView: UIView!
    @IBOutlet weak var activityScrollView: UIScrollView!
    
    //MARK: INIT METHODS
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        loadMainFeedViewNib()
        setupConstraintsOfMainFeedView()
        activityScrollView.delegate = self
    }
    
}

//MARK: SETUP OF VIEW OBJECTS
extension ActivityChooserView {
    
    private func loadMainFeedViewNib() {
        NSBundle.mainBundle().loadNibNamed("ActivityChooserView", owner: self, options: nil)
        self.addSubview(activityChooserView)
    }
    
    private func setupConstraintsOfMainFeedView() {
        activityChooserView.translatesAutoresizingMaskIntoConstraints = false
        activityChooserView.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        activityChooserView.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        activityChooserView.leftAnchor.constraintEqualToAnchor(self.leftAnchor).active = true
        activityChooserView.rightAnchor.constraintEqualToAnchor(self.rightAnchor).active = true
    }
    
}

//MARK: UISCROLLVIEWDELEGATE METHODS
extension ActivityChooserView: UIScrollViewDelegate {
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        activityScrollView.contentOffset = CGPointMake(activityScrollView.contentOffset.x, 0.0)
    }
    
}
