//
//  TradeStrings.swift
//  LocalizedSwift
//
//  Created by qq on 2020/2/22.
//  Copyright © 2020 yhy. All rights reserved.
//

import Foundation
extension Localisation {
    struct Trade: LocalisationProtocol {        
        static var stringsTableName: String {
            return "Trade"
        }
        
        static var bundle: Bundle? {
            return Localisation.languageBundle
        }
        
        static var labelText: String {
            return localizedString(key: "label_text")
        }
        
    }
}
