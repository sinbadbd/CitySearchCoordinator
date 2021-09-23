//
//  SearchCityViewPresentable.swift
//  AirportCitySearch
//
//  Created by Imran Mia on 23/9/21.
//
//import RxSwift
import RxCocoa
//import RxDataSources

protocol SearchCityViewPresentable {
    
    typealias Input = (
        searchText : Driver<String>, ()
    )
    
    typealias Output = ()
    
    var input: SearchCityViewPresentable.Input { get }
    var output: SearchCityViewPresentable.Output { get }
    
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
}

class SearchCityViewModel:SearchCityViewPresentable {
 
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(
        input:SearchCityViewPresentable.Input
    ) {
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
    }
}
private extension SearchCityViewModel{
    static func output(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
}
