//
//  RMSearchResultsView.swift
//  TheRickAndMorty
//
//  Created by undhad kaushik on 02/04/23.
//

import UIKit

protocol RMSercchResultViewDelegate: AnyObject {
    func rmSearchResultView(_ resultView: RMSearchResultsView, didTapLocationAt index: Int)
}

final class RMSearchResultsView: UIView {
    
    weak var delegate: RMSearchResultsView: UIView?
    private var viewModel: RMSearchResultsViewModel? {
        didSet {
            self.processViewModel()
        }
    }
    
    private let tableView: UITableView = {
        let table = UITabelView()
        table.register()
    }
}
