//
//  ViewController.swift
//  Movie Quotes Assignment
//
//  Created by admin on 21/12/2021.
//

import UIKit
import Foundation
import Kingfisher


class ViewController:UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{


    @IBOutlet weak var CollectionView: UICollectionView!
    
    var ArrayofMovi=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyD6klO2WW285UBGKLcmOm7C3R1j3xjVILMdKRuMriKSxEGpqM","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSyoQDohGZEcI7Nlcp8xRn7P5UcQbIjks2A&usqp=CAU","https://www.hollywoodreporter.com/wp-content/uploads/2016/02/ts_buzz_woody_flying.jpg?w=1280" ,"https://www.moviequotesandmore.com/wp-content/uploads/coco.jpg","https://www.moviequotesandmore.com/wp-content/uploads/logan-8.jpg","https://www.moviequotesandmore.com/wp-content/uploads/spider-man-homecoming-2.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR9jEMCztml4kT9HFG9Tgbi3JKmELV9gft1w&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpQG9Si4oMvDom0pMEzpvcXwFD9BaaFiMV1Q&usqp=CAU"]
    
    var ArrName=["The six seance","Joker","Toy Store","Coco","Logan","Spider-Man","Darkesr Hour ","Moana"]
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.delegate=self
        CollectionView.dataSource=self
      //  let layout = UICollectionViewFlowLayout()
        //    layout.itemSize = CGSize(width: 125, height: 190)
           
           //collectionView.collectionViewLayout = layout
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.name.text = ArrName[indexPath.row]
        cell.imageviewcell.kf.setImage(with: URL(string: ArrayofMovi[indexPath.row]))
        cell.backgroundColor = UIColor.systemGray
        
        return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
     let cell:UICollectionViewCell = collectionView.cellForItem(at: indexPath)!
     cell.contentView.backgroundColor = .systemCyan
    let qoutesn=storyboard?.instantiateViewController(withIdentifier: "QuoteScreen") as! QuoteScreen
        qoutesn.movinames=ArrName[indexPath.row]
        self.navigationController?.pushViewController(qoutesn, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width*0.499, height: self.view.frame.width*0.45)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
                                        
                                        }
 
 

