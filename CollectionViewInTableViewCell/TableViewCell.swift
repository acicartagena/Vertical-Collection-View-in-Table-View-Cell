//
//  TableViewCell.swift
//  CollectionViewInTableViewCell
//
//  Created by Angela Cartagena on 7/06/2016.
//  Copyright © 2016 Airtasker. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let reusableIdentifier = "TableViewCell"
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var flow: UICollectionViewFlowLayout! {
        didSet {
            flow.minimumLineSpacing = 8.0
            flow.estimatedItemSize = CGSizeMake(155.0, 66.0)
            flow.scrollDirection = .Vertical
        }
    }
    
    func setupCell() {
        contentView.layoutIfNeeded()
    }
    
    override func systemLayoutSizeFittingSize(targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        collectionView.frame = CGRectMake(8.0, 8.0, targetSize.width, CGFloat(MAXFLOAT))
        collectionView.layoutIfNeeded()
        return collectionView.collectionViewLayout.collectionViewContentSize()
    }
}
