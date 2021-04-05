//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 05/04/21.
//

import Foundation
import UIKit

public protocol Strechable: UIView {
    func stretchToBounds(of view: UIView) -> [NSLayoutConstraint]
    func stretchToBouds(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint]
}

public extension Strechable {
    /// Create a layout witch strech the view to the top, leading, trailing and bottom anchors of the view passed as parameter
    ///
    /// ```
    /// let constraints: [NSLayoutConstraints] = view.stretchToBounds(of: superView)
    /// ```
    /// - Parameter view: View which anchors will constraint the view
    /// - Returns: Array of created constraints
    func stretchToBounds(of view: UIView) -> [NSLayoutConstraint] {
        self.layout { anchors in
          anchors
                .top(attachTo: view.topAnchor)
                .leading(attachTo: view.leadingAnchor)
                .trailing(attachTo: view.trailingAnchor)
                .bottom(attachTo: view.bottomAnchor)
        }
    }
    
    /// Create a layout witch strech the view to the top, leading, trailing and bottom anchors of the layout guide passed as parameter
    ///
    /// ```
    /// let constraints: [NSLayoutConstraints] = view.stretchToBounds(of: view.layoutMarginsGuide)
    /// ```
    /// - Parameter layoutGuide: Layout guide which anchors will constraint the view
    /// - Returns: Array of created constraints
    func stretchToBouds(of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        self.layout { anchors in
          anchors
                .top(attachTo: layoutGuide.topAnchor)
                .leading(attachTo: layoutGuide.leadingAnchor)
                .trailing(attachTo: layoutGuide.trailingAnchor)
                .bottom(attachTo: layoutGuide.bottomAnchor)
        }
    }
}
