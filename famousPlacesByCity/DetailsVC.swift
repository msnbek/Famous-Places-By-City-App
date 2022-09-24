//
//  DetailsVC.swift
//  famousPlacesByCity
//
//  Created by Mahmut Şenbek on 15.09.2022.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var labelLandmarkName: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLanmarkNames = ""
    var selecetedLanmarkImages = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelLandmarkName.text = selectedLanmarkNames
        imageView.image = selecetedLanmarkImages
    
    }
    

    

}
