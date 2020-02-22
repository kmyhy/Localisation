//
//  Localisation.swift
//  LocalizedSwift
//
//  Created by qq on 2020/2/22.
//  Copyright © 2020 yhy. All rights reserved.
//

import Foundation

protocol LocalisationProtocol{
    static var stringsTableName: String { get }
    static var bundle: Bundle? { get }
    static func localizedString(key: String) -> String 
}
extension LocalisationProtocol {
    static func localizedString(key: String) -> String {
        if let stringBundle = bundle {
            return stringBundle.localizedString(forKey: key, value: nil, table: stringsTableName)
        }else{
            return key
        }
    }
}

class Localisation {
    private static let languageBundleSuffix: String = "lproj"
    internal static var languageBundle: Bundle?
    private static var language: String = "en"
    
    static func setLanguage(language: String){
        self.language = language
        if let path = Bundle.localisationBundle.path(forResource: language, ofType: languageBundleSuffix){
            languageBundle = Bundle(path: path)
        }
    }
    static func currentLanguage() -> String {
        return language
    }
}
extension Bundle{
    static let localisationBundle = Bundle(for: Localisation.self)
}
