//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 27/03/21.
//

import Foundation
import UIKit

public protocol Pinable: UIView {
    func pinToCenter(of view: UIView) -> [NSLayoutConstraint]
    func pinToCenter(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint]
    
    func pinToTopLeft(of view: UIView, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToTopLeft(of layoutGuide: UILayoutGuide, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToTopRight(of view: UIView, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToTopRight(of layoutGuide: UILayoutGuide, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToBottomRight(of view: UIView, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToBottomRight(of layoutGuide: UILayoutGuide, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToBottomLeft(of view: UIView, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToBottomLeft(of layoutGuide: UILayoutGuide, yMargin: CGFloat, xMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToTopCenter(of view: UIView, yMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToTopCenter(of layoutGuide: UILayoutGuide, yMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToBottomCenter(of view: UIView, yMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToBottomCenter(of layoutGuide: UILayoutGuide, yMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToCenterLeft(of view: UIView, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToCenterLeft(of layoutGuide: UILayoutGuide, xMargin: CGFloat) -> [NSLayoutConstraint]
    
    func pinToCenterRight(of view: UIView, xMargin: CGFloat) -> [NSLayoutConstraint]
    func pinToCenterRight(of layoutGuide: UILayoutGuide, xMargin: CGFloat) -> [NSLayoutConstraint]
}


public extension Pinable {
    /**
        Pin  the `UIView` to the center of another `UIView`
        
        - parameters:
            - view: the which will be pinned to
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToCenter(of view: UIView) -> [NSLayoutConstraint] {
        self.layout {anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .centerY(attachTo: view.centerYAnchor)
        }
    }
    
    /**
        Pin  the `UIView` to the center of a `UILayoutGuid`
        
        - parameters:
            - layoutGuide: the which will be pinned to
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToCenter(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: layoutGuide.centerXAnchor)
                .centerY(attachTo: layoutGuide.centerYAnchor)
        }
    }
    
    /**
        Pin  the `UIView` to the top left corner of another `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToTopLeft(of view: UIView, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .left(attachTo: view.leftAnchor, constant: xMargin)
                .top(attachTo: view.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the top left corner of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToTopLeft(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .left(attachTo: layoutGuide.leftAnchor, constant: xMargin)
                .top(attachTo: layoutGuide.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the top right corner of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToTopRight(of view: UIView, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .right(attachTo: view.rightAnchor, constant: xMargin)
                .top(attachTo: view.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the top right corner of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToTopRight(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .right(attachTo: layoutGuide.rightAnchor, constant: xMargin)
                .top(attachTo: layoutGuide.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom right corner of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToBottomRight(of view: UIView, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .right(attachTo: view.rightAnchor, constant: xMargin)
                .bottom(attachTo: view.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom right corner of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToBottomRight(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .right(attachTo: layoutGuide.rightAnchor, constant: xMargin)
                .bottom(attachTo: layoutGuide.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom left corner of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToBottomLeft(of view: UIView, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .left(attachTo: view.leftAnchor, constant: xMargin)
                .bottom(attachTo: view.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom left corner of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
            - xMargin: constant value which will push the view towards the right
        - returns: An Array of the created constraints
     */
    @discardableResult func pinToBottomLeft(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .left(attachTo: layoutGuide.leftAnchor, constant: xMargin)
                .bottom(attachTo: layoutGuide.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the top center of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToTopCenter(of view: UIView, yMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .top(attachTo: view.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the top center of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToTopCenter(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: layoutGuide.centerXAnchor)
                .top(attachTo: layoutGuide.topAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom center of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToBottomCenter(of view: UIView, yMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .bottom(attachTo: view.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the bottom center of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - yMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToBottomCenter(of layoutGuide: UILayoutGuide, yMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: layoutGuide.centerXAnchor)
                .bottom(attachTo: layoutGuide.bottomAnchor, constant: yMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the center left of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - xMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToCenterLeft(of view: UIView, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerY(attachTo: view.centerYAnchor)
                .left(attachTo: view.leftAnchor, constant: xMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the center left of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - xMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToCenterLeft(of layoutGuide: UILayoutGuide, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerY(attachTo: layoutGuide.centerYAnchor)
                .left(attachTo: layoutGuide.leftAnchor, constant: xMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the center right of a `UIView`
        
        - parameters:
            - view: the which will be pinned to
            - xMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToCenterRight(of view: UIView, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerY(attachTo: view.centerYAnchor)
                .right(attachTo: view.rightAnchor, constant: xMargin)
        }
    }
    
    /**
     Pin  the `UIView` to the center right of a `UILayoutGuide`
        
        - parameters:
            - layoutGuide: the which will be pinned to
            - xMargin: constant value which will push the view towards the bottom
        - returns: An Array of the created constraints
    */
    @discardableResult func pinToCenterRight(of layoutGuide: UILayoutGuide, xMargin: CGFloat = 0) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerY(attachTo: layoutGuide.centerYAnchor)
                .right(attachTo: layoutGuide.rightAnchor, constant: xMargin)
        }
    }
}
