//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 26/03/21.
//

import Foundation
import UIKit

extension NSLayoutYAxisAnchor {
    func constraint(anchor: NSLayoutYAxisAnchor, relation: GbrlLayoutConfiguration.GbrlConstraintRelation, constant: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalTo: anchor, constant: constant)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        case .lessThan:
            return self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        }
    }
    
    func constraint(SystemSpaceBelowAnchor anchor: NSLayoutYAxisAnchor, relation: GbrlLayoutConfiguration.GbrlConstraintRelation, multiplier: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalToSystemSpacingBelow: anchor, multiplier: multiplier)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        case .lessThan:
            return self.constraint(lessThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        }
    }
}
