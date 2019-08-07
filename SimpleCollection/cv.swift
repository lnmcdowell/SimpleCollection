//
//  cv.swift
//  SimpleCollection
//
//  Created by Larry Mcdowell on 8/7/19.
//  Copyright © 2019 Larry Mcdowell. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class cv: UICollectionViewController {

    override init(collectionViewLayout: UICollectionViewLayout){
        super.init(collectionViewLayout: collectionViewLayout)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var data:[String] = ["hey","bye","hola","yep","yesterday", "today", "morrow", "simple","hard","easy","tough"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let layoutOne = UICollectionViewFlowLayout()
        layoutOne.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
        layoutOne.itemSize = CGSize(width: 150, height: 50)
   
        self.collectionView = UICollectionView(frame: CGRect(x: 50, y: 0, width: 300, height: 300), collectionViewLayout: layoutOne)
        collectionView.backgroundColor = .green
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Register cell classes
        self.collectionView!.register(myCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView.frame = CGRect(x: 80, y: 60, width: UIScreen.main.bounds.width - 160, height: UIScreen.main.bounds.height - 80)
        
     //CGSize(width: 50, height: 50)
        collectionView.isUserInteractionEnabled = true
       
       
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! myCell
  
        cell.text = data[indexPath.row]
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let temp = data[sourceIndexPath.item]
        data.remove(at: sourceIndexPath.item)
        data.insert(temp, at: destinationIndexPath.item)
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
