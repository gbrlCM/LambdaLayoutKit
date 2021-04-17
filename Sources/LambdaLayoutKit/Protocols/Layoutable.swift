//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 05/04/21.
//

import Foundation
import UIKit

public protocol Layoutable: UIView {
    func layout(_ configuration: (_ configurationObject: LKConfiguration) -> LKConfiguration) -> [NSLayoutConstraint]
}

public extension Layoutable {
    
    
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
    @discardableResult
    func layout(_ configuration: (_ configurationObject: LKConfiguration) -> LKConfiguration) -> [NSLayoutConstraint] {
        let configObject = configuration(LKConfiguration(owner: self))
        NSLayoutConstraint.activate(configObject.constraints)
        return configObject.constraints
    }
}
