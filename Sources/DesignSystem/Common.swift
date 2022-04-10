//
//  File.swift
//  
//
//  Created by jerry A on 2022/04/10.
//

import UIKit
import AppBase

extension Bundle {
    private class BundleFinder {}
    
    static var baseResource: Bundle = {
        guard let bundle = Bundle.bundleWith(packageName: "AppBase",
                                          libraryName:  "DesignSystem") else {
            assert(false, "failt to load bundle")
        }
        
        return bundle
    }
}

public extension UIImage {
    static func load(name: String) -> UIImage? {
        if let image = UIImage(named: name, in: Bundle.baseResource, compatibleWith: nil) {
            return image
        } else {
            assert(false, "failt to load image named \(name)")
            return nil
        }
    }
}

extension String {
    func localizedString() -> String? {
        return Bundle.baseResource.localizedString(forKey: self, value: nil, table: nil)
    }
}
