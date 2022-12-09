//
//  Settings.swift
//  FindNumber
//
//  Created by Svetlana Kraichikova on 16/11/2022.
//

import Foundation

enum KeyUserDeafaults {
    static let settingsGame = "settingsGame"
    static let recordGame = "recordGame"
}

struct SettingsGame : Codable{
    var timerState:Bool
    var timeForGame:Int
}

class Settings {
    
    static var shared = Settings()
    
    private let defaultSettings = SettingsGame(timerState: true, timeForGame: 30)
    var currentSettings:SettingsGame {
        
        get{
            if let data = UserDefaults.standard.object(forKey: KeyUserDeafaults.settingsGame) as? Data {
                return try! PropertyListDecoder().decode(SettingsGame.self, from: data)
            } else {
                if let data = try? PropertyListEncoder().encode(defaultSettings) {
                    UserDefaults.standard.setValue(data, forKey: KeyUserDeafaults.settingsGame)
                }
                return defaultSettings
            }
        }
        
        set {
//           do {
//                let data = try
//                PropertyListEncoder().encode(newValue)
//            } catch {
//                print(error)
//            }
            if let data = try? PropertyListEncoder().encode(newValue) {
                UserDefaults.standard.setValue(data, forKey: KeyUserDeafaults.settingsGame)
            }
            
        }
        
    }
    func resetSettings() {
        currentSettings = defaultSettings
    }
    
}
