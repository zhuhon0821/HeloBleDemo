//
//  CmdTool.swift
//  HeloBleLib_Example
//
//  Created by AppleDev_9527 on 2024/7/19.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import CoreBluetooth
enum DeviceProtocolType {
    case probuffType
    case MTKType
}
class CmdTool: NSObject {
    public var cmdManager:CmdManager?
    
    public var type:DeviceProtocolType = .probuffType
    
    public static let sharedInstance = CmdTool()
    
    public func setType(type:DeviceProtocolType) {
        if type != self.type {
            cmdManager = nil
        }
        self.type = type
    }
    
    private  func cmdInstance() -> CmdManager {
        if cmdManager == nil {
            if self.type == .probuffType {
                cmdManager = ProbuffManager()
                ProbuffManager.sharedInstance = cmdManager as? ProbuffManager
            } else {
                cmdManager = MTKManager()
            }
        }
        return cmdManager!
        
    }
    public func syncHealthData() {
        cmdInstance().syncHealthData()
    }
    
    //MARK:read base info
    public func readDeviceInfo() {
       
        cmdInstance().readDeviceInfo()
        
    }
    public func readDeviceBattery() {
        cmdInstance().readDeviceInfo()
    }

    //MARK: -- 01 PeerInfomation
    public func setDateTimeConf(_ date:Date) {
        
        cmdInstance().setDateTimeConf(date)
        
    }
    public func setUserConf(_ userConf:CUserConf) {
       
        cmdInstance().setUserConf(userConf)
       
    }
   
    public func setBloodPresureConf(_ cbpCaliConf:CBpCaliConf) {
        
        cmdInstance().setBloodPresureConf(cbpCaliConf)
       
    }
    public func setHrAlarmConf(_ chrAlarmConf:CHrAlarmConf) {
        
        cmdInstance().setHrAlarmConf(chrAlarmConf)
       
    }
    public func setGoalConf(_ cgoalConf:CGoalConf) {
        
        cmdInstance().setGoalConf(cgoalConf)
       
    }

    public func setGnssConf(_ cgnssConf:CGnssConf) {
        
        cmdInstance().setGnssConf(cgnssConf)
        
    }
    public func setAf24Conf(_ cafConf:CAfConf) {
     
        cmdInstance().setAf24Conf(cafConf)
       
    }
    //MARK: -- 02 MsgNotification
    public func setDNDMode(_ dndModel:CMsgHandler) {
        
        cmdInstance().setDNDMode(dndModel)
        
    }
    public func addSpecialList(_ rolls:[CRoll]) {
        
        cmdInstance().addSpecialList(rolls)
    
    }
    public func clearAllLists() {
       
        cmdInstance().clearAllLists()
       
    }
    //MARK: -- 03 weather
    public func clearWeather() {
        
        cmdInstance().clearWeather()
       
    }
    public func setWeather(_ cweatherGroup : CWeatherGroup) {
       
        cmdInstance().setWeather(cweatherGroup)
     
    }
    public func clearAirQuality() {
      
        cmdInstance().clearAirQuality()
    
    }
    public func writeAirQuality(_ cairQualityData:CAirQualityData) {
       
        cmdInstance().writeAirQuality(cairQualityData)
     
    }
    //MARK: 04 alarm clock
    public func setAlarmClocks(_ calarmClocks:[CAlarmClock]) {
        
        cmdInstance().setAlarmClocks(calarmClocks)
     
    }
    public func clearAlarmClocks(){
       
        cmdInstance().clearAlarmClocks()
    }
    //MARK: -- 05 Calendar
    public func clearCalendar(){
        cmdInstance().clearCalendar()
    }
    public func setCalendar(_ ccalendars:[CCalendar]){
       
        cmdInstance().setCalendar(ccalendars)
       
    }
    //MARK: -- 05 久坐提醒 Sedentary
    public func clearSedentariness() {
        
        cmdInstance().clearSedentariness()
       
    }
    public func setSedentariness(_ csedentarinesses:[CSedentariness]) {
        
        cmdInstance().setSedentariness(csedentarinesses)
       
    }
    //MARK: device setting 设备设置
    public func setDeviceOption(_ cNotification:CDeviceConfNotification) {
        
        cmdInstance().setDeviceOption(cNotification)
       
    }
    //MARK: -- c110 command
    public func setLifeStyle(_ clifeQualityData:CLifeQualityData){
        
        cmdInstance().setLifeStyle(clifeQualityData)
        
    }
    public func setHealthAlarmConf(_ model:CC110HealthAlarmConf) {
        
        cmdInstance().setHealthAlarmConf(model)
       
    }
    public func readHistoryOfHealthAlarm() {
        
        cmdInstance().readHistoryOfHealthAlarm()
       
    }
    public func setSOSConfirm() {
        
        cmdInstance().setSOSConfirm()
        
    }
    public func setAFAlarm(_ af:Bool,_ checkAlarmP:Bool?) {
        
        cmdInstance().setAFAlarm(af, checkAlarmP)
       
    }
    public func setFallConfirm(_ fallRet:Bool) {
        
        cmdInstance().setFallConfirm(fallRet)
    }
    public func setWalletInfo(_ wallet:CWallet) {
        
        cmdInstance().setWalletInfo(wallet)
    }
    //MARK: -- set Motors
    public func setMotors(_ motors:[CVibrateCnf]) {
        
        cmdInstance().setMotors(motors)
    }
    public func feelMotor(_ motor:CVibrateCnf) {
        
        cmdInstance().feelMotor(motor)
        
    }
    public func startDFUMode() {
     
        cmdInstance().startDFUMode()
        
    }
    public func stopDFUMode() {
        
        cmdInstance().stopDFUMode()
    }
    //MARK: -- epo agps Upgrade
    public func startEpoUpgrade() {
        //Read FU Desc ,开启辅助升级第一步
        
        cmdInstance().startEpoUpgrade()
        
        
    }
    /**
       probuff upgrade firmware
     */
    public func writeUpgradeCmdA(_ peripheral:CBPeripheral) {
      
        cmdInstance().writeUpgradeCmdA(peripheral)
    }
    /**
     probuff upgrade firmware
     */
    public func writeUpgradeCmdB(_ peripheral:CBPeripheral) {
        cmdInstance().writeUpgradeCmdB(peripheral)
    }
    public func readSupportHealthItemsForDevice() {
        cmdInstance().readSupportHealthItemsForDevice()
    }
}
