//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 26/03/21.
//

import Foundation
import UIKit

extension NSLayoutXAxisAnchor {
    
    func constraint(anchor: NSLayoutXAxisAnchor, relation: GbrlLayoutConfiguration.GbrlConstraintRelation, constant: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalTo: anchor, constant: constant)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        case .lessThan:
            return self.constraint(lessThanOrEqualTo: anchor, constant: constant)
        }
    }
    
    func constraint(SystemSpaceAfterAnchor anchor: NSLayoutXAxisAnchor, relation: GbrlLayoutConfiguration.GbrlConstraintRelation, multiplier: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalToSystemSpacingAfter: anchor, multiplier: multiplier)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        case .lessThan:
            return self.constraint(lessThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        }
    }
}



