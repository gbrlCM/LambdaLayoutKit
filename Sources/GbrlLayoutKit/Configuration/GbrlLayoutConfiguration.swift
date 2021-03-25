//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 23/03/21.
//

import Foundation
import UIKit

/// Configuration object used inside the UIView.layout(_ configuration: LayoutConfiguration) closure inside of it you going to find all the functions you need to create constraints
///
///- Parameter owner: a UIView which will be used to create the constraints
public final class GbrlLayoutConfiguration {
    
    private let ownerView: UIView
    public var constraints: [NSLayoutConstraint] = []
    
    public init(owner: UIView) {
        self.ownerView = owner
    }
    
    /// Type of relation of a given constraint
    ///
    /// The possible cases are equal, lessThan and greaterThan which are the three types of constraint relation
    public enum GbrlConstraintRelation {
        case equal, lessThan, greaterThan
        
        fileprivate func generateXAxisConstraint(for ownerAnchor: NSLayoutXAxisAnchor, attachTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
            switch self {
            case .equal:
                return ownerAnchor.constraint(equalTo: anchor, constant: constant)
            case .lessThan:
                return ownerAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
            case .greaterThan:
                return ownerAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
            }
        }
        
        fileprivate func generateYAxisConstraint(for ownerAnchor: NSLayoutYAxisAnchor, attachTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> NSLayoutConstraint {
            switch self {
            case .equal:
                return ownerAnchor.constraint(equalTo: anchor, constant: constant)
            case .lessThan:
                return ownerAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
            case .greaterThan:
                return ownerAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
            }
        }
        
        fileprivate func generateDimensionsConstraint(for ownerAnchor: NSLayoutDimension, attachTo anchor: NSLayoutDimension, constant: CGFloat = 0, multiplier: CGFloat = 1) -> NSLayoutConstraint {
            switch self {
            case .equal:
                return ownerAnchor.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
            case .lessThan:
                return ownerAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
            case .greaterThan:
                return ownerAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
            }
        }
    }
    
    //MARK: X Axis
    
    
    
    //MARK: Common Constraints
    /// Configurate the constraint for the leftAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo:  Anchor which the leftAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func left(attachTo anchor: NSLayoutXAxisAnchor, relationType relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let left = relation.generateXAxisConstraint(for: ownerView.leftAnchor, attachTo: anchor, constant: constant)
        constraints.append(left)
        return self
    }
    /// Configurate the constraint for the rightAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the rightAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func right(attachTo anchor: NSLayoutXAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let right = relation.generateXAxisConstraint(for: ownerView.rightAnchor, attachTo: anchor, constant: constant)
        constraints.append(right)
        return self
    }
    /// Configurate the constraint for the leadingAnchor of the owner view, append it to the constraints array and re:rn the configuration object.
    /// - Parameter attachTo: Anchor which the leadingAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func leading(attachTo anchor: NSLayoutXAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let leading = relation.generateXAxisConstraint(for: ownerView.leadingAnchor, attachTo: anchor, constant: constant)
        constraints.append(leading)
        return self
    }
    /// Configurate the constraint for the trailingAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the trailingAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func trailing(attachTo anchor: NSLayoutXAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let trailing = relation.generateXAxisConstraint(for: ownerView.trailingAnchor, attachTo: anchor, constant: constant)
        constraints.append(trailing)
        return self
    }
    /// Configurate the constraint for the centerXAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the centerXAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func centerX(attachTo anchor: NSLayoutXAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let centerX = relation.generateXAxisConstraint(for: ownerView.centerXAnchor, attachTo: anchor, constant: constant)
        constraints.append(centerX)
        return self
    }
    
    //MARK: SystemSpaceAfter
    
    
    
    //MARK: Y Axis
    
    
    
    //MARK: Common Constraints
    
    /// Configurate the constraint for the centerYAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the centerYAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func centerY(attachTo anchor: NSLayoutYAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let centerY = relation.generateYAxisConstraint(for: ownerView.centerYAnchor, attachTo: anchor, constant: constant)
        constraints.append(centerY)
        return self
    }
    /// Configurate the constraint for the topAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the topAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func top(attachTo anchor: NSLayoutYAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let top = relation.generateYAxisConstraint(for: ownerView.topAnchor, attachTo: anchor, constant: constant)
        constraints.append(top)
        return self
    }
    /// Configurate the constraint for the bottomAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the bottomAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func bottom(attachTo anchor: NSLayoutYAxisAnchor, relation: GbrlConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let bottom = relation.generateYAxisConstraint(for: ownerView.bottomAnchor, attachTo: anchor, constant: constant)
        constraints.append(bottom)
        return self
    }
    
    //MARK: SystemSpaceBellow
    
    
    
    //MARK: Dimesions
    
    /// Configurate the constraint for the heightAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the heightAnchor of the ownerView will be attached.
    /// - Parameter relation: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    /// - Parameter multiplier: The value wich will multiply the constraint.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func height(attachTo anchor: NSLayoutDimension, relation: GbrlConstraintRelation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let height = relation.generateDimensionsConstraint(for: ownerView.heightAnchor, attachTo: anchor, constant: constant, multiplier: multiplier)
        constraints.append(height)
        return self
    }
    /// Configurate the constraint for the heightAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter constantSize: a constant value that will constrain the height of the view
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func height(constantSize: CGFloat) -> Self {
        let height = ownerView.heightAnchor.constraint(equalToConstant: constantSize)
        constraints.append(height)
        return self
    }
    /// Configurate the constraint for the widthAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the widthAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    /// - Parameter multiplier: The value wich will multiply the constraint.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func width(attachTo anchor: NSLayoutDimension, relation: GbrlConstraintRelation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let width = relation.generateDimensionsConstraint(for: ownerView.widthAnchor, attachTo: anchor, constant: constant, multiplier: multiplier)
        constraints.append(width)
        return self
    }
    /// Configurate the constraint for the widthAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter constantSize: a constant value that will constrain the width of the view
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func width(constantSize: CGFloat) -> Self {
        let width = ownerView.widthAnchor.constraint(equalToConstant: constantSize)
        constraints.append(width)
        return self
    }
    
}
