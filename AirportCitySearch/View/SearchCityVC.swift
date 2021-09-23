//
//  ViewController.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class SearchCityVC: UIViewController {
    @IBOutlet weak var roundedView: UIView!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableview: UITableView!
    
    var viewModel: SearchCityViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

