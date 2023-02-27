//
//  ViewController.swift
//  PreOnBoardingChallenge
//
//  Created by 박성민 on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    
    @IBOutlet weak var loadAllButton: UIButton!
    
    
    let firstImageURL: String = "https://images.pexels.com/photos/10768835/pexels-photo-10768835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    let secondImageURL: String = "https://images.pexels.com/photos/15513809/pexels-photo-15513809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    let thirdImageURL: String = "https://images.pexels.com/photos/14589752/pexels-photo-14589752.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    let fourthImageURL: String = "https://images.pexels.com/photos/6463665/pexels-photo-6463665.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    let fifthImageURL: String = "https://images.pexels.com/photos/14922780/pexels-photo-14922780.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
    }
    
    func setUpView() {
        firstImageView.image = UIImage(systemName: "photo")
        secondImageView.image = UIImage(systemName: "photo")
        thirdImageView.image = UIImage(systemName: "photo")
        fourthImageView.image = UIImage(systemName: "photo")
        fifthImageView.image = UIImage(systemName: "photo")
        
        firstButton.setTitle("Load", for: .normal)
        secondButton.setTitle("Load", for: .normal)
        thirdButton.setTitle("Load", for: .normal)
        fourthButton.setTitle("Load", for: .normal)
        fifthButton.setTitle("Load", for: .normal)
        loadAllButton.setTitle("Load All Images", for: .normal)
    }
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        firstImageView.image = UIImage(systemName: "photo")
        let url = URL(string: firstImageURL)
        firstImageView.imageLoad(url: url!)
    }
    
    @IBAction func secondButtonTapped(_ sender: Any) {
        secondImageView.image = UIImage(systemName: "photo")
        let url = URL(string: secondImageURL)
        secondImageView.imageLoad(url: url!)
    }
    
    @IBAction func thirdButtonTapped(_ sender: Any) {
        thirdImageView.image = UIImage(systemName: "photo")
        let url = URL(string: thirdImageURL)
        thirdImageView.imageLoad(url: url!)
    }
    
    @IBAction func fourthButtonTapped(_ sender: Any) {
        fourthImageView.image = UIImage(systemName: "photo")
        let url = URL(string: fourthImageURL)
        fourthImageView.imageLoad(url: url!)
    }
    
    @IBAction func fifthButtonTapped(_ sender: Any) {
        fifthImageView.image = UIImage(systemName: "photo")
        let url = URL(string: fifthImageURL)
        fifthImageView.imageLoad(url: url!)
    }
    
    
    
    @IBAction func loadAllButtonTapped(_ sender: Any) {
        firstButtonTapped(self)
        secondButtonTapped(self)
        thirdButtonTapped(self)
        fourthButtonTapped(self)
        fifthButtonTapped(self)
    }
    
}

extension UIImageView {
    func imageLoad(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
