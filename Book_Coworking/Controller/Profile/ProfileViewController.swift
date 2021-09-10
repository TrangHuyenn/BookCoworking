//
//  ProfileViewController.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/3/21.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class ProfileViewController: UIViewController {
    
    //MARK: IBOutlet
    @IBOutlet weak var tableSetting: UITableView!
    @IBOutlet weak var buttonChangeAvata: UIImageView!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var img_avata: UIImageView!
    
    var dataTitleSetting = ["My Order", "My vouchers", "Edit profile" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let signOutButton = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: #selector(didTabSignOut))
        navigationItem.rightBarButtonItem = signOutButton
        tableSetting.delegate = self
        tableSetting.dataSource = self
        setUpView()
        fetchData()
    }
    
    @objc func didTabSignOut() {
        try? Auth.auth().signOut()
        let senceDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate
        senceDelegate?.setRootViewController()
    }
    
    func fetchData() {
        let currentEmail = Auth.auth().currentUser?.email
        labelEmail.text = currentEmail
        
        let db = Firestore.firestore()
        let collection = db.collection("User")
        let document = collection.document(currentEmail!)
        document.getDocument { snapshot, error in
            guard let data = snapshot?.data() as? [String : String],
                  let name = data["Name"] else {
                print("Data was empty")
                return
            }
            self.labelName.text = name
        }
        
        changeImageAvata()
    }
    
    func changeImageAvata() {
        let didTabChangeAvata = UITapGestureRecognizer(target: self, action: #selector(didTabButtonChangeAvata))
        buttonChangeAvata.addGestureRecognizer(didTabChangeAvata)
    }
    
    @objc func didTabButtonChangeAvata() {
        print("Did tap Button")
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func setUpView() {
        img_avata.layer.cornerRadius = img_avata.frame.height/2
        img_avata.clipsToBounds = true
    }
}

//MARK: - Extension ViewController

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTitleSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = dataTitleSetting[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}

extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as? UIImage
        
        if let theImage = image {
            img_avata.image = theImage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
}
