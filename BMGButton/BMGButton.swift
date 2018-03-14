//
//  Button.swift
//  BMGButton
//
//  Created by OWL Developer on 14/03/2018.
//  Copyright © 2018 OWL Developer. All rights reserved.
//

import Foundation

class BMGButton : UIButton {

    @IBOutlet weak var bmgButton: UIButton!
    
    
    override func awakeAfter(using aDecoder: NSCoder) -> Any? {
        return self.loadFromNibIfEmbeddedInDifferentNib()
    }
    
    override var isHighlighted: Bool {
        didSet {
            if oldValue != isHighlighted {
                updateAppearance()
            }
        }
    }

    private func updateAppearance() {
        if (isSelected || isHighlighted) && isEnabled {
            buttonTouchedIn()
        } else {
            buttonTouchedOut()
        }
        alpha = isEnabled ? 1 : 0.8
    }

    private func buttonTouchedIn() {
//        backgroundColor = UIColor.random // as an example
//        textForLabel = "."
//        startTimer() // add '.' every millisecond
//        UIView.animate(withDuration: 0.3, animations: {
//            self.viewHeightConstraint.constant += 40.0 // change size
//            self.layoutIfNeeded()
//        })
//        animateClouds() // animate something inside
    }

    private func buttonTouchedOut() {
//        backgroundColor = oldValue // some old value (example)
//        invalidateTimer() // stop the timer
//        label.text = constantExampleText
//        UIView.commitAnimations()
//        UIView.animate(withDuration: 0.3, animations: {
//            self.viewHeightConstraint.constant -= 40.0 // initial size
//            self.layoutIfNeeded()
//        })
    }
    
}

extension UIView {
    
    func loadFromNibIfEmbeddedInDifferentNib() -> Self {
//        let isJustAPlaceholder = subviews.count == 0
//        if isJustAPlaceholder {
//            let theRealThing = type(of: self).viewFromNib()
//            theRealThing.frame = frame
//            translatesAutoresizingMaskIntoConstraints = false
//            theRealThing.translatesAutoresizingMaskIntoConstraints = false
//            return theRealThing
//        }
        return self
    }
    
}
