//
//  CmdManager.swift
//  HeloBleLib_Example
//
//  Created by Apple9527 on 2024/10/17.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import CoreBluetooth

class CmdManager: NSObject {
    public func syncHealthData() {
        
    }
    
    //MARK:read base info
    public func readDeviceInfo() {
        
    }
    public func readDeviceBattery() {
       
    }

    //MARK: -- 01 PeerInfomation
    public func setDateTimeConf(_ date:Date) {
        
    }
    public func setUserConf(_ userConf:CUserConf) {

    }
   
    public func setBloodPresureConf(_ cbpCaliConf:CBpCaliConf) {
    
    }
    public func setHrAlarmConf(_ chrAlarmConf:CHrAlarmConf) {
        
    }
    public func setGoalConf(_ cgoalConf:CGoalConf) {
       
    }
    public func setGnssConf(_ cgnssConf:CGnssConf) {
        
    }
    public func setAf24Conf(_ cafConf:CAfConf) {
        
    }
    //MARK: -- 02 MsgNotification
    public func setDNDMode(_ dndModel:CMsgHandler) {
        
    }
    public func addSpecialList(_ rolls:[CRoll]) {
        
    }
    public func clearAllLists() {
        
    }
    //MARK: -- 03 weather
    public func clearWeather() {
        
    }
    public func setWeather(_ cweatherGroup : CWeatherGroup) {
       
    }
    public func clearAirQuality() {
       
    }
    public func writeAirQuality(_ cairQualityData:CAirQualityData) {
       
    }
    //MARK: 04 alarm clock
    public func setAlarmClocks(_ calarmClocks:[CAlarmClock]) {
        
    }
    public func clearAlarmClocks(){
        
    }
    //MARK: -- 05 Calendar
    public func clearCalendar(){
        
    }
    public func setCalendar(_ ccalendars:[CCalendar]){
        
    }
    //MARK: -- 05 久坐提醒 Sedentary
    public func clearSedentariness() {
        
    }
    public func setSedentariness(_ csedentarinesses:[CSedentariness]) {
        
    }
    //MARK: device setting 设备设置
    public func setDeviceOption(_ cNotification:CDeviceConfNotification) {
       
    }
    //MARK: -- c110 command
    public func setLifeStyle(_ clifeQualityData:CLifeQualityData){
        
    }
    public func setHealthAlarmConf(_ model:CC110HealthAlarmConf) {
        
    }
    public func readHistoryOfHealthAlarm() {
       
    }
    public func setSOSConfirm() {
        
    }
    public func setAFAlarm(_ af:Bool,_ checkAlarmP:Bool?) {
        
    }
    public func setFallConfirm(_ fallRet:Bool) {
       
    }
    public func setWalletInfo(_ wallet:CWallet) {
        
    }
    //MARK: -- set Motors
    public func setMotors(_ motors:[CVibrateCnf]) {
        
    }
    public func feelMotor(_ motor:CVibrateCnf) {
       
    }
    public func startDFUMode() {
       
        
    }
    public func stopDFUMode() {
       
    }
    //MARK: -- epo agps Upgrade
    public func startEpoUpgrade() {
        //Read FU Desc ,开启辅助升级第一步
        
    }
    /**
       probuff upgrade firmware
     */
    public func writeUpgradeCmdA(_ peripheral:CBPeripheral) {
      
        
    }
    /**
     probuff upgrade firmware
     */
    public func writeUpgradeCmdB(_ peripheral:CBPeripheral) {
        
    }
    public func readSupportHealthItemsForDevice() {
        
    }
}
