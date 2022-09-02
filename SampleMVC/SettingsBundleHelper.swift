//
//  SettingsBundleHelper.swift
//  Shopgoodwill
//
//  Created by Ketul Shah on 13/04/22.
//

import Foundation

class SettingsBundleHelper {
    struct SettingsBundleKeys {
        static let envKey = "env_preference"
        static let BuildVersionKey = "build_preference"
        static let AppVersionKey = "version_preference"
    }
//    class func checkAndExecuteSettings() {
//        if UserDefaults.standard.bool(forKey: SettingsBundleKeys.Reset) {
//            UserDefaults.standard.set(false, forKey: SettingsBundleKeys.Reset)
//            let appDomain: String? = Bundle.main.bundleIdentifier
//            UserDefaults.standard.removePersistentDomain(forName: appDomain!)
//            // reset userDefaults..
//            // CoreDataDataModel().deleteAllData()
//            // delete all other user data here..
//        }
//    }
    
    class func setVersionAndBuildNumber() {
        if let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
            UserDefaults.standard.set(version, forKey: "version_preference")
        }
        if let build: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as? String {
            UserDefaults.standard.set(build, forKey: "build_preference")
        }
    }
    
    @objc class func defaultsChanged() {
        if let objEnv = UserDefaults.standard.object(forKey: "env_preference") as? String {
            
            if objEnv == "1" { //QA
                BASEURL = QAURL  // QA NEW URL
            } else if  objEnv == "2" { //UAT
                BASEURL = UATURL  // UAT URL
            } else if  objEnv == "3" { //Production
                BASEURL = PRODUCTIONURL  // Production URL
            } else {
                BASEURL = UATURL  // UAT URL
            }
            
            
        }
    }
    

}
