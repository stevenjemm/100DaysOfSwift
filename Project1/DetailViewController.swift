//
//  DetailViewController.swift
//  Project1
//
//  Created by Steven Jemmott on 06/04/2019.
//  Copyright © 2019 Bottled Sunshine. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    
    // MARK: - Properties
    var selectedImage: String?
    var total: Int?
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage, let total = total, let index = index {
            imageView.image = UIImage(named: imageToLoad)
            title = "Picture \(index + 1) of \(total)"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
