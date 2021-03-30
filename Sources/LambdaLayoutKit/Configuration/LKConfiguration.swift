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
public final class LKConfiguration {
    
    private let ownerView: UIView
    public var constraints: [NSLayoutConstraint] = []
    
    public init(owner: UIView) {
        self.ownerView = owner
    }
    
    /// Type of relation of a given constraint
    ///
    /// The possible cases are equal, lessThan and greaterThan which are the three types of constraint relation
    public enum LKConstraintRelation {
        case equal, lessThan, greaterThan
    }
    
    //MARK: X Axis
    
    /// Configurate the constraint for the leftAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo:  Anchor which the leftAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func left(attachTo anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let left = ownerView.leftAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(left)
        return self
    }
    
    public func left(attachToSystemSpaceAfterOf anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let left = ownerView.leftAnchor.constraint(SystemSpaceAfterAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func right(attachTo anchor: NSLayoutXAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let right = ownerView.rightAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(right)
        return self
    }
    
    public func right(attachToSystemSpaceAfterOf anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let right = ownerView.rightAnchor.constraint(SystemSpaceAfterAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func leading(attachTo anchor: NSLayoutXAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let leading = ownerView.leadingAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(leading)
        return self
    }
    
    public func leading(attachToSystemSpaceAfterOf anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let leading = ownerView.leadingAnchor.constraint(SystemSpaceAfterAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func trailing(attachTo anchor: NSLayoutXAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let trailing = ownerView.trailingAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(trailing)
        return self
    }
    
    public func trailing(attachToSystemSpaceAfterOf anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let trailing = ownerView.trailingAnchor.constraint(SystemSpaceAfterAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func centerX(attachTo anchor: NSLayoutXAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self{
        let centerX = ownerView.centerXAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(centerX)
        return self
    }
    
    public func centerX(attachToSystemSpaceAfterOf anchor: NSLayoutXAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let centerX = ownerView.centerXAnchor.constraint(SystemSpaceAfterAnchor: anchor, relation: relation, multiplier: multiplier)
        constraints.append(centerX)
        return self
    }
    
    //MARK: Y Axis
    
    /// Configurate the constraint for the centerYAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the centerYAnchor of the ownerView will be attached.
    /// - Parameter relationType: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func centerY(attachTo anchor: NSLayoutYAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let centerY = ownerView.centerYAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        constraints.append(centerY)
        return self
    }
    
    public func centerY(attachToSystemSpaceBelowOf anchor: NSLayoutYAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let centerY = ownerView.centerYAnchor.constraint(SystemSpaceBelowAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func top(attachTo anchor: NSLayoutYAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let top = ownerView.topAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        self.constraints.append(top)
        return self
    }
    
    public func top(attachToSystemSpaceBelowOf anchor: NSLayoutYAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let top = ownerView.topAnchor.constraint(SystemSpaceBelowAnchor: anchor, relation: relation, multiplier: multiplier)
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
    public func bottom(attachTo anchor: NSLayoutYAxisAnchor, relation: LKConstraintRelation = .equal, constant: CGFloat = 0) -> Self {
        let bottom = ownerView.bottomAnchor.constraint(anchor: anchor, relation: relation, constant: constant)
        self.constraints.append(bottom)
        return self
    }
    
    public func bottom(attachToSystemSpaceBelowOf anchor: NSLayoutYAxisAnchor, relationType relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1) -> Self {
        let bottom = ownerView.bottomAnchor.constraint(SystemSpaceBelowAnchor: anchor, relation: relation, multiplier: multiplier)
        constraints.append(bottom)
        return self
    }
    
    
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
    public func height(attachTo anchor: NSLayoutDimension, relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let height = ownerView.heightAnchor.constraint(anchor: anchor, relation: relation, constant: constant, multiplier: multiplier)
        constraints.append(height)
        return self
    }
    /// Configurate the constraint for the heightAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter constantSize: a constant value that will constrain the height of the view
    /// - Parameter relation: The type of constraint relation. The possible relations are: greater than, equal and less than.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func height(constantSize: CGFloat, relation: LKConstraintRelation = .equal) -> Self {
        let height = ownerView.heightAnchor.constraint(constant: constantSize, relation: relation)
        constraints.append(height)
        return self
    }
    /// Configurate the constraint for the widthAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter attachTo: Anchor which the widthAnchor of the ownerView will be attached.
    /// - Parameter relation: The type of constraint relation. The possible relations are: greater than, equal and less than.
    /// - Parameter constant: The constant wich will be added to the constraints.
    /// - Parameter multiplier: The value wich will multiply the constraint.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func width(attachTo anchor: NSLayoutDimension, relation: LKConstraintRelation = .equal, multiplier: CGFloat = 1, constant: CGFloat = 0) -> Self {
        let width = ownerView.widthAnchor.constraint(anchor: anchor, relation: relation, constant: constant, multiplier: multiplier)
        constraints.append(width)
        return self
    }
    /// Configurate the constraint for the widthAnchor of the owner view, append it to the constraints array and return the configuration object.
    /// - Parameter constantSize: a constant value that will constrain the width of the view
    /// - Parameter relation: The type of constraint relation. The possible relations are: greater than, equal and less than.
    ///
    /// For more information how a constraint behave you can check the Apple Auto Layout Guide.
    ///
    /// - Returns: The configurationObject making possible to chain functions.
    public func width(constantSize: CGFloat, relation: LKConstraintRelation = .equal) -> Self {
        let width = ownerView.widthAnchor.constraint(constant: constantSize, relation: relation)
        constraints.append(width)
        return self
    }
    
}
