//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 26/03/21.
//

import Foundation
import UIKit

extension NSLayoutDimension {
    
    func constraint(anchor: NSLayoutDimension, relation: LKConfiguration.LKConstraintRelation, constant: CGFloat, multiplier: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        case .lessThan:
            return self.constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
        }
    }
    
    func constraint(constant: CGFloat, relation: LKConfiguration.LKConstraintRelation) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return self.constraint(equalToConstant: constant)
        case .lessThan:
            return self.constraint(lessThanOrEqualToConstant: constant)
        case .greaterThan:
            return self.constraint(greaterThanOrEqualToConstant: constant)
        
        }
    }
    
    
}
