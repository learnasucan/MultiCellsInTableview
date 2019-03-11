//
//  OffersRow.swift
//  TwoDirectionalScroller
//
//  Created by OJASWI DEWANGAN on 06/03/19.
//  Copyright © 2019 Thorn Technologies. All rights reserved.
//

import UIKit

class OffersRow: UITableViewCell {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension OffersRow : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeOffersCell", for: indexPath) as! HomeOffersCell
        return cell
    }
    
}
