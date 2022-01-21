//
//  game1Controller.swift
//  which-taiyaki
//
//  Created by 橋目　那桜 on 2022/01/21.
//

import UIKit

class game1Controller: UIViewController {
    
    var number: Int!
    
    @IBOutlet var image1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    @IBAction func a (){
    number = Int.random(in: 0...3)
    
        if number == 0 {
            image1.image = UIImage(named: "ta1")
           
           
        } else if number == 1 {
            image1.image = UIImage(named: "ta2")
         
        } else if number == 2 {
            image1.image = UIImage(named: "ta3")
                          
        } else {
            image1.image = UIImage(named: "ta4")
           
}
    }
}
