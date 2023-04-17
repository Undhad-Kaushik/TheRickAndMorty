//
//  RMTabViewController .swift
//  TheRickAndMorty
//
//  Created by undhad kaushik on 01/04/23.
//

import UIKit
/// Controller to house tabs root tab controller
final class RMTabBarController: UITabBarController  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        setupTabs()
    }
    private func setupTabs() {
        let charaterVC = RMCharactereViewController()
        let locationsVC = RMLocationViewController()
        let episodsVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController ()
        
        charaterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodsVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC .navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charaterVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodsVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episods",
                                       image: UIImage(systemName: "tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings ",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4 )
        
        for nav in [nav1, nav2 ,nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

