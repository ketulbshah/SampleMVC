//
//  Constants.swift
//  SampleMVC
//
//  Created by Ketul Shah on 02/09/22.
//

import Foundation
import UIKit

let APPDELEGATE = UIApplication.shared.delegate as? AppDelegate
let MAINSCREEN = UIScreen.main.bounds
let USERDEFAULTS = UserDefaults.standard
let PRODUCTIONURL = "https://production.com/api/"
let UATURL = "https://UAT.com/api/"
let QAURL = "https://QA.com/api/"
#if Production
    let APPNAME = "SampleMVC"
    var BASEURL = PRODUCTIONURL  // Production URL
#else
    let APPNAME = "SampleMVC_Dev"
    var BASEURL = UATURL  // Production URL
#endif

