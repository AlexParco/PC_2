//
//  ViewController.swift
//  PC_2v
//
//  Created by Alex Parco on 20/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let characterViewModel = HomaViewControll()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Task {
            await characterViewModel.loadData()
            tableView.reloadData()
        }

        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource , UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characterViewModel.results.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CharacterTableViewCell
        
        let character = characterViewModel.results[indexPath.row]
        
        let imageUrl = URL(string: character.image)!

        let image = try? UIImage(withContentsOfUrl: imageUrl)
        
        cell.imageView?.image = image
        cell.labelName?.text = character.name
        cell.labelStatus?.text = "Status: \(character.status) | Species: \(character.species)"
        
        return cell
    }
    
}
        
extension UIImage {

    convenience init?(withContentsOfUrl url: URL) throws {
        let imageData = try Data(contentsOf: url)
    
        self.init(data: imageData)
    }

}
