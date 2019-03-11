//
//  SearchCell.swift
//  TwoDirectionalScroller
//
//  Created by OJASWI DEWANGAN on 07/03/19.
//  Copyright © 2019 Thorn Technologies. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    @IBOutlet var searchBar: UISearchBar!
    
    var callBackSeachClosure: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //DELEGATE CONNECTED TO SEARCHCELL TC
        searchBar.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension SearchCell: UISearchBarDelegate {
    
    /*
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        
        guard let closureBack = callBackSeachClosure else { return }
        
        closureBack()
        
       
    }
    */
    
    /*
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        guard let closureBack = callBackSeachClosure else { return  false}
        
        closureBack()
        return  true
    }
    */
    
    /*
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        guard let closureBack = callBackSeachClosure else { return }
        
        closureBack()
    }
    */
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {

    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let closureBack = callBackSeachClosure else { return }
        
        closureBack()
    }
}
