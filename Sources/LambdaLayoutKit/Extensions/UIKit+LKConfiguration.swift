//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 23/03/21.
//

import Foundation
import UIKit

public extension UIView {
    typealias LayoutConfiguration = (_ configurationObject: LKConfiguration) -> LKConfiguration
    
    ///Create and activate Constraints configured by a closure with a configuration object as parameter
    ///
    /// The object contain methods to configurate your constraints, you're able to constraint all the seven anchors of a view with the same configurations
    /// as the tradicional Constraint API, check the configuration object class for more information
    ///
    /// ```
    /// let constraints: [NSLayoutConstraints] = view.layout { anchors in
    ///     anchors
    ///         .top(otherView.topAnchor)
    ///         .leading(otherView.leadingAnchor)
    ///         .trailing(otherView.trailingAnchor)
    ///         .bottom(otherView.bottomAnchor)
    /// }
    /// ```
    /// - Parameter configuration: Closure with the `configurationObject` of type `GbrlLayoutConfiguration` as its only parameter, this closure define the layout of the view.
    /// - Returns:The array of the created constraints
    func layout(_ configuration: LayoutConfiguration) -> [NSLayoutConstraint] {
        let configObject = configuration(LKConfiguration(owner: self))
        NSLayoutConstraint.activate(configObject.constraints)
        return configObject.constraints
    }
    
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
