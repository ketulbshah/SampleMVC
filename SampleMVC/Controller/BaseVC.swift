//
//  BaseVC.swift
//  SampleMVC
//
//  Created by Ketul Shah on 02/09/22.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    func setNavigationBarWithBackButton()  {
//        
//        // set title image
//        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 180, height: 35))
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 180, height: 35))
//        imageView.contentMode = .scaleAspectFit
//        imageView.isAccessibilityElement = true
//        imageView.accessibilityTraits = .button
//        imageView.accessibilityLabel = "Return to ShopGoodWill Home Page"
//        let image = UIImage(named: "TitleLogo.png")
//        imageView.image = image
//        logoContainer.addSubview(imageView)
//        navigationItem.titleView = logoContainer
//        
//        // Set Logo tap event
//        let tapLogo = UITapGestureRecognizer(target: self, action: #selector(logoClicked(_:)))
//        navigationItem.titleView!.isUserInteractionEnabled = true
//        navigationItem.titleView!.addGestureRecognizer(tapLogo)
//        
//        self.addBackButton()
//    }
//    
//    func addBackButton() {
//        // Set back button on left side
//        let buttonBack = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
//        buttonBack.setImage(UIImage(named: "BackButton"), for: .normal)
//        buttonBack.contentHorizontalAlignment = .left
//        buttonBack.contentMode = .left
//        buttonBack.accessibilityTraits = UIAccessibilityTraits.staticText
//        buttonBack.addTarget(self, action: #selector(self.btnBaseBackClicked), for: .touchUpInside)
//        let btnBackItem = UIBarButtonItem(customView: buttonBack)
//        self.navigationItem.setLeftBarButtonItems([btnBackItem], animated: true)
//    }
//
//    // Back button Action Change
//    @objc func btnBaseBackClicked(button: UIButton) {
//        navigationController?.popViewController(animated: true)
//    }
//    
}
