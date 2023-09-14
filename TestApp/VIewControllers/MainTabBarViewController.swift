//
//  MainTabBarViewController.swift
//  TestApp
//
//  Created by Pascal on 30.08.23.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        createTabBar()
        setTabBarApperance()
        
    }
    
    
    private func createTabBar(){
        viewControllers = [
            generateVC(viewController: DeviceManagementViewController(), title: "Device", image: UIImage(systemName: "star.circle")),
            generateVC(viewController: RadioSignalAnalysisViewController(), title: "Radio", image: UIImage(systemName: "waveform.path.ecg.rectangle")),
            generateVC(viewController: RFIDReaderViewController(), title: "RFID", image: UIImage(systemName: "sensor.tag.radiowaves.forward")),
            generateVC(viewController: SettingsViewController(), title: "Setting", image: UIImage(systemName: "gearshape.fill")),
            generateVC(viewController: AdditionalFunctionsViewController(), title: "addFunc", image: UIImage(systemName: "gearshape.2.fill"))
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image:UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
        
    }
    
    private func setTabBarApperance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(x: positionOnX,
                                y: tabBar.bounds.minY - positionOnY,
                                width: width,
                                height: height
                               ),
            cornerRadius: height/2
        )
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = CustomColor.mainOrangeColor.cgColor
        
        tabBar.tintColor = CustomColor.additionalLightBrowColor
        tabBar.unselectedItemTintColor = CustomColor.mainBlackColor
    }
    
}
