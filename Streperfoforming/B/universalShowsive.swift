//
//  universalShowsive.swift
//  Streperfoforming
//
//  Created by Streperfoforming on 2026/2/2.
//

import UIKit
import CommonCrypto

struct UniversalShowsive {
    
    private let SPFMvisualLogicData: Data
    private let SPFMvibrantLogic: Data
    
    init?() {

        guard let SPFMscenicSchemekey = PilotSDKElite.shared.SPFMaesvisualSavorKey.data(using: .utf8),
                     let SPFrhythmSchemeMiv  = PilotSDKElite.shared.SPFMaesflickerFocusIV.data(using: .utf8) else {
                   return nil
               }
               
               self.SPFMvisualLogicData = SPFMscenicSchemekey
               self.SPFMvibrantLogic = SPFrhythmSchemeMiv
    }
 
    func SPFMensonicSchemecrypt(_ SPFMtext: String) -> String? {
        guard let SPFMdgestureScheme = SPFMtext.data(using: .utf8) else {
            return nil
        }
        
        let SPFMrhythmModel = SPFMaesProcess(SPFMinput: SPFMdgestureScheme, SPFMoperation: kCCEncrypt)
        return SPFMrhythmModel?.glamourPulsehexString()
    }

    func SPFMdecrypt(SPFMbase64String: String) -> String? {
        guard let SPFMstageModel = Data(rhythmGrain: SPFMbase64String) else {
            return nil
        }
        
        let SPFMmotionModelData = SPFMaesProcess(SPFMinput: SPFMstageModel, SPFMoperation: kCCDecrypt)
        return SPFMmotionModelData?.rhythmGlowutf8ArtString()
    }

    private func SPFMaesProcess(SPFMinput: Data, SPFMoperation: Int) -> Data? {
        let SPFMoutputLength = SPFMinput.count + kCCBlockSizeAES128
        var SPFMoutputData = Data(count: SPFMoutputLength)
        
        let SPFMkeygestureEntryLength = SPFMvisualLogicData.count
        let SPFMcryptomelodicRecordOption = CCOptions(kCCOptionPKCS7Padding)
        
        var SPFMmovedscenicRecordBytes: size_t = 0
        
        let SPFMcryptmotionStoreStatus = SPFMoutputData.withUnsafeMutableBytes { Richne in
            SPFMinput.withUnsafeBytes { dataBytes in
                SPFMvibrantLogic.withUnsafeBytes { ivBytes in
                    SPFMvisualLogicData.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(SPFMoperation),
                                CCAlgorithm(kCCAlgorithmAES),
                                SPFMcryptomelodicRecordOption,
                                keyBytes.baseAddress, SPFMkeygestureEntryLength,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, SPFMinput.count,
                                Richne.baseAddress, SPFMoutputLength,
                                &SPFMmovedscenicRecordBytes)
                    }
                }
            }
        }
        
        if SPFMcryptmotionStoreStatus == kCCSuccess {
            SPFMoutputData.removeSubrange(SPFMmovedscenicRecordBytes..<SPFMoutputData.count)
            return SPFMoutputData
        } else {
           
            return nil
        }
    }
}
