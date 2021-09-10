//
//  RegisterViewControllerr.swift
//  Book_Coworking
//
//  Created by Trang Huyền on 9/8/21.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import ProgressHUD

class RegisterViewControllerr: UIViewController {
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img_login")
        return image
    }()
    
    let viewButon: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.backgroundColor = UIColor().mainColor()
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0.8745098039, green: 0.6156862745, blue: 0.3803921569, alpha: 1)
        return view
    }()
    
    let viewButonSignIn: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMinXMinYCorner]
        
        return view
    }()
    
    let viewButonSignUp: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.layer.maskedCorners =  [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        view.backgroundColor = .white
        return view
    }()
    
    
    let labelSignIn: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign In"
        label.textColor = .white
        return label
    }()
    
    let labelSignUp: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign Up"
        
        return label
    }()
    
    let viewSignInContent: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewSignUpContent: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let inputUserName = UITextField().textField(placeholder: "User Name")
    let inputEmail = UITextField().textField(placeholder: "Email")
    let inputPassword = UITextField().textField(placeholder: "Password")
    let inputComfirmPassword = UITextField().textField(placeholder: "Comfirm Password")
    let buttonSignIn = UIButton().button(text: "Sign In")
    let buttonSignUp = UIButton().button(text: "Sign Up")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationController?.isNavigationBarHidden = true
        // add view
        view.addSubview(imageView)
        view.addSubview(viewButon)
        viewButon.addSubview(viewButonSignIn)
        viewButon.addSubview(viewButonSignUp)
        viewButonSignIn.addSubview(labelSignIn)
        viewButonSignUp.addSubview(labelSignUp)
        
        setUpLayout()
        
        let tapSignIn = UITapGestureRecognizer(target: self, action: #selector(didTabChooseSignIn))
        let tapSignUp = UITapGestureRecognizer(target: self, action: #selector(didTabChooseSignUp))
        viewButonSignIn.addGestureRecognizer(tapSignIn)
        viewButonSignUp.addGestureRecognizer(tapSignUp)
        buttonSignUp.addTarget(self, action: #selector(didTabButtonSignUp), for: .touchUpInside)
        buttonSignIn.addTarget(self, action: #selector(didTabButtionSignIn), for: .touchUpInside)
        
    }
    
    func setUpLayout() {
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3).isActive = true
        
        viewButon.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -30).isActive = true
        viewButon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true
        viewButon.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        viewButon.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        viewButonSignIn.topAnchor.constraint(equalTo: viewButon.topAnchor, constant: 0).isActive = true
        viewButonSignIn.leadingAnchor.constraint(equalTo: viewButon.leadingAnchor, constant: 0).isActive = true
        viewButonSignIn.heightAnchor.constraint(equalTo: viewButon.heightAnchor, constant: 0).isActive = true
        viewButonSignIn.widthAnchor.constraint(equalTo: viewButon.widthAnchor, multiplier: 1/2).isActive = true
        
        labelSignIn.centerXAnchor.constraint(equalTo: viewButonSignIn.centerXAnchor).isActive = true
        labelSignIn.centerYAnchor.constraint(equalTo: viewButonSignIn.centerYAnchor).isActive = true
        
        viewButonSignUp.topAnchor.constraint(equalTo: viewButon.topAnchor, constant: 0).isActive = true
        viewButonSignUp.leadingAnchor.constraint(equalTo: viewButonSignIn.trailingAnchor, constant: 0).isActive = true
        viewButonSignUp.trailingAnchor.constraint(equalTo: viewButon.trailingAnchor, constant: 0).isActive = true
        viewButonSignUp.heightAnchor.constraint(equalTo: viewButon.heightAnchor, constant: 0).isActive = true
        
        labelSignUp.centerXAnchor.constraint(equalTo: viewButonSignUp.centerXAnchor).isActive = true
        labelSignUp.centerYAnchor.constraint(equalTo: viewButonSignUp.centerYAnchor).isActive = true

        setUpSignInLayout()
    }
    
    @objc func didTabChooseSignIn() {
        viewButonSignIn.backgroundColor = UIColor().mainColor()
        viewButonSignUp.backgroundColor = .white
        labelSignUp.textColor = .black
        labelSignIn.textColor = .white
        viewSignUpContent.isHidden = true
        viewSignInContent.isHidden = false
        setUpSignInLayout()
    }
    
    @objc func didTabChooseSignUp() {
        viewButonSignUp.backgroundColor = UIColor().mainColor()
        viewButonSignIn.backgroundColor = .systemBackground
        labelSignIn.textColor = .black
        labelSignUp.textColor = .white
        viewSignInContent.isHidden = true
        viewSignUpContent.isHidden = false
        setUpSignUpLayout()

    }
    
    func setUpSignInLayout(){
        view.addSubview(viewSignInContent)
        viewSignInContent.addSubview(inputEmail)
        viewSignInContent.addSubview(inputPassword)
        viewSignInContent.addSubview(buttonSignIn)
        
        viewSignInContent.topAnchor.constraint(equalTo: viewButon.bottomAnchor, constant: 20).isActive = true
        viewSignInContent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        viewSignInContent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        viewSignInContent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        inputEmail.topAnchor.constraint(equalTo: viewSignInContent.topAnchor, constant: 0).isActive = true
        inputEmail.leadingAnchor.constraint(equalTo: viewSignInContent.leadingAnchor, constant: 20).isActive = true
        inputEmail.trailingAnchor.constraint(equalTo: viewSignInContent.trailingAnchor, constant: -20).isActive = true
        inputEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        inputPassword.topAnchor.constraint(equalTo: inputEmail.bottomAnchor, constant: 20).isActive = true
        inputPassword.leadingAnchor.constraint(equalTo: inputEmail.leadingAnchor, constant: 0).isActive = true
        inputPassword.trailingAnchor.constraint(equalTo: inputEmail.trailingAnchor, constant: 0).isActive = true
        inputPassword.heightAnchor.constraint(equalTo: inputEmail.heightAnchor, multiplier: 1).isActive = true
        
        buttonSignIn.bottomAnchor.constraint(equalTo: viewSignInContent.bottomAnchor, constant: -50).isActive = true
        buttonSignIn.leadingAnchor.constraint(equalTo: inputPassword.leadingAnchor, constant: 0).isActive = true
        buttonSignIn.trailingAnchor.constraint(equalTo: inputPassword.trailingAnchor, constant: 0).isActive = true
        buttonSignIn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setUpSignUpLayout() {
        view.addSubview(viewSignUpContent)
        viewSignUpContent.addSubview(inputUserName)
        viewSignUpContent.addSubview(inputEmail)
        viewSignUpContent.addSubview(inputPassword)
        viewSignUpContent.addSubview(inputComfirmPassword)
        viewSignUpContent.addSubview(buttonSignUp)
        
        viewSignUpContent.topAnchor.constraint(equalTo: viewButon.bottomAnchor, constant: 20).isActive = true
        viewSignUpContent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        viewSignUpContent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        viewSignUpContent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        inputUserName.topAnchor.constraint(equalTo: viewSignUpContent.topAnchor, constant: 0).isActive = true
        inputUserName.leadingAnchor.constraint(equalTo: viewSignUpContent.leadingAnchor, constant: 20).isActive = true
        inputUserName.trailingAnchor.constraint(equalTo: viewSignUpContent.trailingAnchor, constant: -20).isActive = true
        inputUserName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        inputEmail.topAnchor.constraint(equalTo: inputUserName.bottomAnchor, constant: 20).isActive = true
        inputEmail.leadingAnchor.constraint(equalTo: inputUserName.leadingAnchor, constant: 0).isActive = true
        inputEmail.trailingAnchor.constraint(equalTo: inputUserName.trailingAnchor, constant: 0).isActive = true
        inputEmail.heightAnchor.constraint(equalTo: inputUserName.heightAnchor, multiplier: 1).isActive = true
        
        inputPassword.topAnchor.constraint(equalTo: inputEmail.bottomAnchor, constant: 20).isActive = true
        inputPassword.leadingAnchor.constraint(equalTo: inputEmail.leadingAnchor, constant: 0).isActive = true
        inputPassword.trailingAnchor.constraint(equalTo: inputEmail.trailingAnchor, constant: 0).isActive = true
        inputPassword.heightAnchor.constraint(equalTo: inputEmail.heightAnchor, multiplier: 1).isActive = true
        
        inputComfirmPassword.topAnchor.constraint(equalTo: inputPassword.bottomAnchor, constant: 20).isActive = true
        inputComfirmPassword.leadingAnchor.constraint(equalTo: inputPassword.leadingAnchor, constant: 0).isActive = true
        inputComfirmPassword.trailingAnchor.constraint(equalTo: inputPassword.trailingAnchor, constant: 0).isActive = true
        inputComfirmPassword.heightAnchor.constraint(equalTo: inputPassword.heightAnchor, multiplier: 1).isActive = true
        
        buttonSignUp.bottomAnchor.constraint(equalTo: viewSignUpContent.bottomAnchor, constant: -50).isActive = true
        buttonSignUp.leadingAnchor.constraint(equalTo: inputComfirmPassword.leadingAnchor, constant: 0).isActive = true
        buttonSignUp.trailingAnchor.constraint(equalTo: inputComfirmPassword.trailingAnchor, constant: 0).isActive = true
        buttonSignUp.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func didTabButtonSignUp(){
        guard let email = inputEmail.text, let password = inputPassword.text,
              let username = inputUserName.text, let commfirmPassword = inputComfirmPassword.text
        else { return  }
        
        Auth.auth().createUser(withEmail: email, password: password) { success, error in
            
            // create collection user
            let vc = TabBarViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            
            let db = Firestore.firestore()
            let collection = db.collection("User")
            let document = collection.document(email)
            
            document.setData(["Name": username, "Email": email])
            ProgressHUD.show()
        }
    }
    
    @objc func didTabButtionSignIn() {
        guard let email = inputEmail.text, let password = inputPassword.text else { return  }
        
        ProgressHUD.show()
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            ProgressHUD.dismiss()
            if result != nil {
                let vc = TabBarViewController()
                self.navigationController?.pushViewController(vc, animated: true)
                
                
            }
    }
    }
    
}
