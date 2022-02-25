//
//  game2Controller.swift
//  which-taiyaki
//
//  Created by 橋目　那桜 on 2022/01/21.
//

import UIKit

class game2Controller: UIViewController {
    var number: Int = 0
    @IBOutlet var lavel1: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lavel1.text = String(number)
        
        
                
    }

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


