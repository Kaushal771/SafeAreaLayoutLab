//
//  ViewController.swift
//  SafeAreaLab
//
//  Created by Kaushal Desai on 2022-10-13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }

    
    func setupViews() {
        
        let topLabel = makeLabel(withText: "Top")
        let bottomLabel = makeLabel(withText: "Bottom")
        
        let leadingLabel = makeLabel(withText: "Leading")
        let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        // Can add constraints in an array with NSLayoutConstraint.activate([]) -  dont need to do .isActive = true on each constraint just need to a ',' after each individual constraint
        NSLayoutConstraint.activate([
        
        // Top Label Constraints
        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        // Bottom Label Constraints
        bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
        bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        // Leading Label Constraints
        leadingLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
        leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        // Leading Label Constraints
        trailingLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
        trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        
        ])
    }
    
    func makeLabel(withText text: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .cyan
        label.font = UIFont.systemFont(ofSize: 32)
        
        return label
    }

}

