//
//  ProfileViewController.swift
//  iCookliner_SubmissionDicoding
//
//  Created by Diana Febrina Lumbantoruan on 13/06/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var fotoProfil: UIImageView!
    @IBOutlet weak var labelNama: UILabel!
    @IBOutlet weak var labelUmur: UILabel!
    @IBOutlet weak var labelAlamat: UILabel!
    @IBOutlet weak var labelAgama: UILabel!
    @IBOutlet weak var labelAbout: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fotoProfil.image = UIImage(named: "profil")
        labelNama.text = "Nama    : Diana Febrina L"
        labelUmur.text = "Umur     : 20 Tahun"
        labelAlamat.text = "Alamat  : Jl. Pembangunan"
        labelAgama.text = "Agama  : Kristen"
        labelAbout.text = "About"
        labelDescription.text = "I am a student majoring in Informatics Management at the Medan State Polytechnic. I really like learning coding and I have a dream to become a coder. I'm actually learning about Swift, UI/UX Design, and I like it. I like to learn new things. For me, it's really important to have a lot of knowledge and learn something new. I really enjoyed learning in dicoding about creating a simple iOS based App for beginners like me. I learn a lot of new things and hopefully what I learn can be my stepping stone to achieve my dream. Thankyou."


    }

}
