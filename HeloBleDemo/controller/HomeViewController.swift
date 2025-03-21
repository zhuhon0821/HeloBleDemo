//
//  HomeViewController.swift
//  HeloBleDemo
//
//  Created by AppleDev_9527 on 2024/4/9.
//

import UIKit
import HeloBleLib
import GRDB
import SwiftProtobuf
import CoreBluetooth
@_exported import SnapKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

class HomeViewController: UIViewController, BleManagerDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
   
    var devices = [CBPeripheral]()
    
    lazy var homeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: screenWidth-20, height: 50)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .vertical
        homeCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight), collectionViewLayout: layout)
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
        homeCollectionView.register(BleDeviceCollectionViewCell.classForCoder(), forCellWithReuseIdentifier: NSStringFromClass(BleDeviceCollectionViewCell.classForCoder()))
        
        return homeCollectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        self.view.backgroundColor = UIColor.white
        BleManager.sharedInstance.delegate = self
        self.view.addSubview(self.homeCollectionView)
        self.homeCollectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

}

extension HomeViewController {
    func didReceiveDeviceState(state: CBManagerState) {
        print(state)
        if state == .poweredOn {
            BleManager.sharedInstance.startScanBleDevice(uuids: nil)
        }
    }
    
    func didDiscoverDevice(peripheral: CBPeripheral) {
        if !self.devices.contains(peripheral) && peripheral.name?.count ?? 0 > 0 {
            print(peripheral)
            if let name = peripheral.name {
                if name.hasPrefix("BIOSENSE-") {
                    self.devices.append(peripheral)
                    self.homeCollectionView.reloadData()
                }
            }
        }
    }
    
    func didConnectedDeviceSuccess(peripheral: CBPeripheral) {
        print("didConnectedDeviceSuccess")
        
    }
    
    func didConnectedDeviceFailed(peripheral: CBPeripheral) {
        print("didConnectedDeviceFailed")
    }
    
    func didDisconnectedDevice(peripheral: CBPeripheral) {
        print("didDisconnectedDevice")
    }
    
}

extension HomeViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.devices.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NSStringFromClass(BleDeviceCollectionViewCell.classForCoder()), for: indexPath) as! BleDeviceCollectionViewCell
        let p = self.devices[indexPath.item]
        cell.title = p.name
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let p = self.devices[indexPath.item]
        BleManager.sharedInstance.connectBleDevice(peripheral: p)
        BleManager.sharedInstance.stopScanBleDevice()
        
    }
}
