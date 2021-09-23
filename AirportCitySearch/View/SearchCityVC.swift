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

class SearchCityVC: UIViewController, Storyboarded {
    @IBOutlet weak var roundedView: UIView!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var tableview: UITableView!
    
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = viewModelBuilder((
            searchText: searchTextField.rx.text.orEmpty.asDriver(),()
        ))
    }


}

