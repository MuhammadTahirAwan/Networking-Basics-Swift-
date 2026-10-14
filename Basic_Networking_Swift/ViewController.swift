//
//  ViewController.swift
//  Basic_Networking_Swift
//
//  Created by Tahir Awan on 10/10/2026.
//

import UIKit

class ViewController: UIViewController {
    
    var users: [User] = []
    var emails: [String] = []
    
    
    public let network: NetworkServiceProtocol
    
    init(network: NetworkServiceProtocol = NetworkService()) {
        self.network = network
        super.init(nibName: nil, bundle: nil)
    }
    
    // Storyboard unarchiving initializer
    required init?(coder: NSCoder) {
        // Fall back to default service when unarchived from storyboard
        self.network = NetworkService()
        super.init(coder: coder)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        network.request(.user(), as: [User].self) { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let users):
                self.users = users
                
            case .failure(let error):
                print(error.localizedDescription)
            }
            
            
            
            if !self.users.isEmpty{
                
                self.emails = self.users.compactMap{ $0.email }
            }
            
            print(self.emails)
        }
    }
    
    


}

