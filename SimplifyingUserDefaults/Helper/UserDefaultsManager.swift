//
//  UserDefaultsManager.swift
//  SimplifyingUserDefaults
//
//  Created by Tashreque Mohammed Haq on 25/9/21.
//

import Foundation

/// A wrapper over UserDefaults to store or retrieve data of any type using Apple's UserDefaults.
final class UserDefaultsManager<T> {
    private let identifier: String
    
    init(_ identifier: String) {
        self.identifier = identifier
    }
    
    /// The value to be set or to be retrieved.
    var value: T? {
        set {
            UserDefaults.standard.set(newValue, forKey: self.identifier)
        }
        get {
            return UserDefaults.standard.object(forKey: self.identifier) as? T
        }
    }
}
