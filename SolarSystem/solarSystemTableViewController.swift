//
//  solarSystemTableViewController.swift
//  SolarSystem
//
//  Created by John Tate on 8/21/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import UIKit

class solarSystemTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PlanetController.planets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.imageView?.image = UIImage(named: planet.name.lowercased())
        return cell
    }
    
    
    // MARK: - Delegate
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200.0
    }
    
    // Black Diamond: Add an image of the entire Solar System as a header view to the list UITableView.
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerImage: UIImage = UIImage(named: "solarsystem")!
        let headerView = UIImageView(image: headerImage)
        return headerView
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Check if its the right Segue
        if segue.identifier == "planetDetail" {
            
            // We are going to get our Destination View Controller from the segue
            let destinationVC = segue.destination as? planetViewController
            
            // I want to know where on the tableView my User selected and get back the index path for that.
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            // Get back the specific planet the user tapped on from our data source.  Use indexPath to get there.
            let planet = PlanetController.planets[indexPath.row]
            
            // Set our landing pad = the planet we pulled out of the dataSource
            destinationVC?.planet = planet
        }
    }
    

}
