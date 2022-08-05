//
//  AppleViewController.swift
//  which-taiyaki
//
//  Created by 橋目　那桜 on 2022/05/27.
//

import UIKit

class AppleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func easy() {
        let nextView = storyboard?.instantiateViewController(withIdentifier: "game1Controller") as! game1Controller
        
        nextView.reciever = "easy"
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func normal() {
        let nextView = storyboard?.instantiateViewController(withIdentifier: "game1Controller") as! game1Controller
        
        nextView.reciever = "normal"
        self.present(nextView, animated: true, completion: nil)
    }
    @IBAction func difficult() {
        let nextView = storyboard?.instantiateViewController(withIdentifier: "game1Controller") as! game1Controller
        
        nextView.reciever = "difficult"
        self.present(nextView, animated: true, completion: nil)
    
    }
    

    }


