//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 23/03/21.
//

import Foundation
import UIKit

extension UIView {
    typealias LayoutConfiguration = (_ configurationObject: GbrlLayoutConfiguration) -> GbrlLayoutConfiguration
    
    func layout(_ configuration: LayoutConfiguration) -> [NSLayoutConstraint] {
        let configObject = configuration(GbrlLayoutConfiguration(owner: self))
        NSLayoutConstraint.activate(configObject.constraints)
        return configObject.constraints
    }
    
    func stretchToBounds(of view: UIView) -> [NSLayoutConstraint] {
        self.layout { anchors in
          anchors
                .top(attachTo: view.topAnchor)
                .leading(attachTo: view.leadingAnchor)
                .trailing(attachTo: view.trailingAnchor)
                .bottom(attachTo: view.bottomAnchor)
        }
    }
    
    func stretchToBounds(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor)-> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .top(attachTo: top)
                .leading(attachTo: leading)
                .trailing(attachTo: trailing)
                .bottom(attachTo: bottom)
        }
    }
    
    func stretchToBounds(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, right: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .top(attachTo: top)
                .left(attachTo: left)
                .right(attachTo: right)
                .bottom(attachTo: bottom)
        }
    }
    
    func pinToCenter(of view: UIView)-> [NSLayoutConstraint] {
        self.layout {anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .centerY(attachTo: view.centerYAnchor)
        }
    }
    
    func pinToCenter(of view: UIView, width: CGFloat, height: CGFloat) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .centerY(attachTo: view.centerYAnchor)
                .width(constantSize: width)
                .height(constantSize: height)
        }
    }
    
    func pinToCenter(of view: UIView, widthAnchor: NSLayoutDimension, heightAnchor: NSLayoutDimension) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .centerY(attachTo: view.centerYAnchor)
                .width(attachTo: widthAnchor)
                .height(attachTo: heightAnchor)
        }
    }
}
