//
//  ViewController.swift
//  Instafilter
//
//  Created by Mark (WorkProfile) on 12.09.2020.
//  Copyright © 2020 Mark (WorkProfile). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var intensity: UISlider!
    
    var currentImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "YACIFP"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(importPicture))

    }
    @IBAction func changeFilter(_ sender: Any) {
    }
    
    @IBAction func save(_ sender: UIButton) {
    }
    
    @IBAction func intensityChanged(_ sender: UISlider) {
    }
    
}

//MARK: - Image Picker Controller
extension ViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @objc func importPicture() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else { return }
        
        dismiss(animated: true)
        
        currentImage = image
    }
    
}
