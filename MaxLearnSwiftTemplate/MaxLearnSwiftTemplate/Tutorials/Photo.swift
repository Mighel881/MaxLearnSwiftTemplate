//
//  Photo.swift
//  ProgrammierdeineApp
//
//  Created by Max Schneider on 31.01.19.
//  Copyright © 2019 Max Schneider. All rights reserved.
//

//Privacy - Camera Usage Description
//Privacy - Photo Library Additions Usage Description

import Foundation
import UIKit
class Photo : UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{ @IBOutlet weak var img: UIImageView!; @IBAction func takePhoto(_ sender: Any) { if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera){ let imgPICKER = UIImagePickerController(); imgPICKER.delegate = self; imgPICKER.sourceType = UIImagePickerController.SourceType.camera; imgPICKER.allowsEditing = false; self.present(imgPICKER,animated: true,completion: nil) } }; @IBAction func choosePhoto(_ sender: Any) { if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary){ let imgPICKER = UIImagePickerController(); imgPICKER.delegate = self; imgPICKER.sourceType = UIImagePickerController.SourceType.photoLibrary;  imgPICKER.allowsEditing = false; self.present(imgPICKER,animated: true,completion: nil) } }; func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { img.image = pickedImage }; dismiss(animated: true, completion: nil)}}
