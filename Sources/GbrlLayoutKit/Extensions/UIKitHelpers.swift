//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 24/03/21.
//

import Foundation
import UIKit

public extension UIView {
    
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
