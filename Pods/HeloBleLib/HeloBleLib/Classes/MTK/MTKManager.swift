//
//  MTKManager.swift
//  HeloBleLib_Example
//
//  Created by AppleDev_9527 on 2024/4/15.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

class MTKManager: CmdManager {
    
    public override func syncHealthData() {
        
    }
    
    //MARK:read base info
    public override func readDeviceInfo() {
        
    }
    public override func readDeviceBattery() {
       
    }

    //MARK: -- 01 PeerInfomation
    public override func setDateTimeConf(_ date:Date) {
        
    }
    public override func setUserConf(_ userConf:CUserConf) {

    }
   
    public override func setBloodPresureConf(_ cbpCaliConf:CBpCaliConf) {
    
    }
    public override func setHrAlarmConf(_ chrAlarmConf:CHrAlarmConf) {
        
    }
    public override func setGoalConf(_ cgoalConf:CGoalConf) {
       
    }
    public override func setGnssConf(_ cgnssConf:CGnssConf) {
        
    }
    public override func setAf24Conf(_ cafConf:CAfConf) {
        
    }
    //MARK: -- 02 MsgNotification
    public override func setDNDMode(_ dndModel:CMsgHandler) {
        
    }
    public override func addSpecialList(_ rolls:[CRoll]) {
        
    }
    public override func clearAllLists() {
        
    }
    //MARK: -- 03 weather
    public override func clearWeather() {
        
    }
    public override func setWeather(_ cweatherGroup : CWeatherGroup) {
       
    }
    public override func clearAirQuality() {
       
    }
    public override func writeAirQuality(_ cairQualityData:CAirQualityData) {
       
    }
    //MARK: 04 alarm clock
    public override func setAlarmClocks(_ calarmClocks:[CAlarmClock]) {
        
    }
    public override func clearAlarmClocks(){
        
    }
    //MARK: -- 05 Calendar
    public override func clearCalendar(){
        
    }
    public override func setCalendar(_ ccalendars:[CCalendar]){
        
    }
    //MARK: -- 05 久坐提醒 Sedentary
    public override func clearSedentariness() {
        
    }
    public override func setSedentariness(_ csedentarinesses:[CSedentariness]) {
        
    }
    //MARK: device setting 设备设置
    public override func setDeviceOption(_ cNotification:CDeviceConfNotification) {
       
    }
    //MARK: -- c110 command
    public override func setLifeStyle(_ clifeQualityData:CLifeQualityData){
        
    }
    public override func setHealthAlarmConf(_ model:CC110HealthAlarmConf) {
        
    }
    public override func readHistoryOfHealthAlarm() {
       
    }
    public override func setSOSConfirm() {
        
    }
    public override func setAFAlarm(_ af:Bool,_ checkAlarmP:Bool?) {
        
    }
    public override func setFallConfirm(_ fallRet:Bool) {
       
    }
    public override func setWalletInfo(_ wallet:CWallet) {
        
    }
    //MARK: -- set Motors
    public override func setMotors(_ motors:[CVibrateCnf]) {
        
    }
    public override func feelMotor(_ motor:CVibrateCnf) {
       
    }
    public override func startDFUMode() {
       
        
    }
    public override func stopDFUMode() {
       
    }
    //MARK: -- epo agps Upgrade
    public override func startEpoUpgrade() {
        //Read FU Desc ,开启辅助升级第一步
        
    }
    public override func readSupportHealthItemsForDevice() {
        
    }
}
