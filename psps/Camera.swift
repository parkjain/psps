//
//  ViewController.swift
//  psps
//
//  Created by Release on 2018. 5. 28..
//  Copyright © 2018년 Release. All rights reserved.
//

import UIKit
import MobileCoreServices


var memo: Array<String> = []
var Images: Array<UIImage> = []
var color: Array<String> = []


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var firstImageView: UIImageView!
    let imagePicker: UIImagePickerController! = UIImagePickerController()
    var captureImage: UIImage!
    var flagImageSave = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func takeapicture(_ sender: Any) {
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            flagImageSave = false
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = false
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let mediaType = info[UIImagePickerControllerOriginalImage] as! UIImagePickerControllerDelegate
        if mediaType.isEqual(kUTTypeImage as NSString as String) {
            captureImage = info[UIImagePickerControllerOriginalImage] as! UIImage
            firstImageView.image = captureImage
            Images.append(captureImage)
        }
        self.dismiss(animated: true, completion: nil)
    }
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func memo(_ sender: Any) {
        performSegue(withIdentifier: "gotoMemo", sender: self)
    }
    
    @IBAction func back1(_ sender: Any) {
    }


}
