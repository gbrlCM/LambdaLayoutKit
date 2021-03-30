//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 27/03/21.
//

import Foundation
import UIKit

protocol Pinable: UIView {
    func pinToCenter(of view: UIView) -> [NSLayoutConstraint]
    func pinToCenter(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint]
}

extension Pinable {

    func pinToCenter(of view: UIView) -> [NSLayoutConstraint] {
        self.layout {anchors in
            anchors
                .centerX(attachTo: view.centerXAnchor)
                .centerY(attachTo: view.centerYAnchor)
        }
    }
    
    func pinToCenter(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .centerX(attachTo: layoutGuide.centerXAnchor)
                .centerY(attachTo: layoutGuide.centerYAnchor)
        }
    }
}
