//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 23/03/21.
//

import Foundation
import UIKit

public extension UIView {
    typealias LayoutConfiguration = (_ configurationObject: GbrlLayoutConfiguration) -> GbrlLayoutConfiguration
    
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
        let configObject = configuration(GbrlLayoutConfiguration(owner: self))
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
    func stretchToBoud (of layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        self.layout { anchors in
          anchors
                .top(attachTo: layoutGuide.topAnchor)
                .leading(attachTo: layoutGuide.leadingAnchor)
                .trailing(attachTo: layoutGuide.trailingAnchor)
                .bottom(attachTo: layoutGuide.bottomAnchor)
        }
    }
    
    /// Create a layout witch strech the view to the passed anchors
    ///
    /// ```
    /// let constraints: [NSLayoutConstraints] = view.stretchToBounds(top: leftView.topAnchor, leading: leftView.trailingAnchor
    /// , trailing: rightView.leadingAnchor, bottom: leftView.bottomAnchor)
    /// ```
    /// - Parameter top: anchor wich will constraint the topAnchor of the view
    /// - Parameter leading: anchor wich will constraint the leadingAnchor of the view
    /// - Parameter trailing: anchor wich will constraint the trailingAnchor of the view
    /// - Parameter bottom: anchor wich will constraint the bottom of the view
    /// - Returns: Array of created constraints
    func stretchToBounds(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor)-> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .top(attachTo: top)
                .leading(attachTo: leading)
                .trailing(attachTo: trailing)
                .bottom(attachTo: bottom)
        }
    }
    
    /// Create a layout witch strech the view to the passed anchors
    ///
    /// ```
    /// let constraints: [NSLayoutConstraints] = view.stretchToBounds(top: leftView.topAnchor, left: leftView.leftAnchor
    /// , right: rightView.rightAnchor, bottom: leftView.bottomAnchor)
    /// ```
    /// - Parameter top: anchor wich will constraint the topAnchor of the view
    /// - Parameter left: anchor wich will constraint the leftAnchor of the view
    /// - Parameter right: anchor wich will constraint the rightAnchor of the view
    /// - Parameter bottom: anchor wich will constraint the bottom of the view
    /// - Returns: Array of created constraints
    func stretchToBounds(top: NSLayoutYAxisAnchor, left: NSLayoutXAxisAnchor, right: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor) -> [NSLayoutConstraint] {
        self.layout { anchors in
            anchors
                .top(attachTo: top)
                .left(attachTo: left)
                .right(attachTo: right)
                .bottom(attachTo: bottom)
        }
    }
    
    /**
     pin
     */
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
