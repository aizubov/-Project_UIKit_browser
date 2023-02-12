//
//  InitialViewController.swift
//  -Project_UIKit_browser
//
//  Created by user226947 on 12/21/22.
//


import Foundation
import UIKit


class InitialViewController: UITableViewController {
    
    let sections = ["Animation and Haptics", "Windows and Screens", "View Controllers", "Images and PDF, Views and Controls"]
    
    let websites = [["UIDynamicAnimator", "UICollisionBehavior", "UIGravityBehavior", "UIDynamicItem", "UIPushBehavior"], ["UIAlertController"], ["UIActivityViewController", "UINavigationViewController", "UIPageViewController", "UICollectionView", "UITabBarController", "UITableViewController"], ["UIImage"], ["UITabBarItem", "UIPickerView", "UIProgressView", "UIActivityIndicatorView", "UILabel", "UIImageView", "UIWebView", "UIScrollView", "UITextView", "UITableView", "UIButton", "UIDatePicker", "UISegmentedControl", "UITextField", "UISlider"]]
    
    /*
    var websites = ["UIAlertController", "UIActivityViewController", "UINavigationViewController", "UIPageViewController", "UIDynamicAnimator", "UICollision", "UIGravity", "UIPushBehavior", "UICollectionView", "UIImage", "UITabBarItem", "UIPickerView", "UIProgressView", "UIActivityIndicator", "UILabel", "UIImageView", "UIWebView", "UIScrollView", "UITabBarController", "UITableViewController", "UITextView", "UITableView", "UIButton", "UIDataPicker", "UISegmentControl", "UITextField", "UISlider"]
    */
    
    
    //var websites = ["apple.com", "google.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "UIKit top classes"
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vc.selectedsection = indexPath.section
        vc.websites = websites
        vc.displayWebsite = indexPath.row

        navigationController?.pushViewController(vc, animated: true)
    }
    
}
