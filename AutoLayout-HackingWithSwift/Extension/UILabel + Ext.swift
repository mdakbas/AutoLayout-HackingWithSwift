//
//  UILabel + Ext.swift
//  AutoLayout-HackingWithSwift
//
//  Created by Mert Deniz Akbaş on 10.08.2023.
//

import UIKit

extension UILabel {
    func setLabel(constraints: Bool, backgroundColor: UIColor, text: String){
        self.translatesAutoresizingMaskIntoConstraints = constraints
        self.backgroundColor = backgroundColor
        self.text = text
        self.sizeToFit()
        
    }
}


