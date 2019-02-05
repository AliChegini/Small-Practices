//
//  PhotoCell.swift
//  CollectionView
//
//  Created by Ehsan on 05/02/2019.
//  Copyright © 2019 Ali C. All rights reserved.
//

import UIKit


class PhotoCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        addSubview(imageView)
        addSubview(separator)
        addSubview(label)
        
        // constraint for image view
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": imageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-16-[v0]-20-[v1]-16-[v2]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": imageView, "v1": label, "v2": separator]))
        
        // constraint for separator line
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": separator]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": separator]))
        
        
        // constraint for label
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": label]))
        
        
        
    }
    
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.green
        imageView.image = UIImage(imageLiteralResourceName: "satellite")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let separator: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    
    let label: UILabel = {
       let title = UILabel()
        title.text = "Hello world! I am here. See me!"
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    
    
}
