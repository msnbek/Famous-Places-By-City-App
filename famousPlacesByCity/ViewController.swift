//
//  ViewController.swift
//  famousPlacesByCity
//
//  Created by Mahmut Şenbek on 15.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames  = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkNames = ""
    var chosenLandmarkImages = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Effiel Tower")
        landmarkNames.append("LibertyTower")
        landmarkNames.append("Peri Bacaları")
        landmarkNames.append("Rio De Janeiro")
        landmarkNames.append("Taj Mahal")
        

        landmarkImages.append(UIImage(named: "colosseum")!)
        landmarkImages.append(UIImage(named: "effielTower")!)
        landmarkImages.append(UIImage(named: "libertyTower")!)
        landmarkImages.append(UIImage(named: "PeriBacaları")!)
        landmarkImages.append(UIImage(named: "rioDeJaneiro")!)
        landmarkImages.append(UIImage(named: "TajMahal")!)
        
    
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = UITableViewCell()
        // Below code will unfunction very soon.
       // cell.textLabel?.text = "test"
        // You can use below code for above code.
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.image = landmarkImages[indexPath.row]
      //  content.secondaryText = "secondary test"
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkNames = landmarkNames[indexPath.row]
        chosenLandmarkImages = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVc = segue.destination as! DetailsVC
            destinationVc.selecetedLanmarkImages = chosenLandmarkImages
            destinationVc.selectedLanmarkNames = chosenLandmarkNames
        }
    }
    /*
    // Delete Func
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            self.landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
            
    }
     */
}

