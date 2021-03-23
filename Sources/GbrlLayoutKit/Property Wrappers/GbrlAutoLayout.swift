//
//  File.swift
//  
//
//  Created by Gabriel Ferreira de Carvalho on 23/03/21.
//

import Foundation
import UIKit

@propertyWrapper final class GbrlAutoLayout <View: UIView> {
    private lazy var view: View = {
        let view = View(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var wrappedValue: View {
        return view
    }
}
