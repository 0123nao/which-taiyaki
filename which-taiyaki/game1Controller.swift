//
//  game1Controller.swift
//  which-taiyaki
//
//  Created by 橋目　那桜 on 2022/01/21.
//

import UIKit

class game1Controller: UIViewController {
    
    var number: Int!
    var point: Int! = 0
    @IBOutlet var pointlabel: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var image1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        button2.isHidden = true
        button3.isHidden = true
        
        
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
        number = Int.random(in: 1...4)
        
        if number == 1 {
            image1.image = UIImage(named: "ta1")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3")
            
        } else {
            image1.image = UIImage(named: "ta4")
            
        }
        button1.isHidden = true
        button2.isHidden = false
        button3.isHidden = false
    }
    
    // 良いたい焼きのボタンが押された時
    // numberが１，２の時は１点
    @IBAction func b (){
        
        if number == 1 {
            point = point + 1
            
        } else if number == 2 {
            point = point + 1
            
        } else if number == 3 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 4 {
            self.performSegue(withIdentifier: "result", sender: nil)
        }
        pointlabel.text = String(point!)
        
        number = Int.random(in: 1...4)
        
        if number == 1 {
            image1.image = UIImage(named: "ta1")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3")
            
        } else {
            image1.image = UIImage(named: "ta4")
            
        }
        
    }
    
    // 悪いたい焼きのボタンが押された時
    // numberが3,4の時はおわり
    @IBAction func c (){
        if number == 1 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 2 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
            
        } else if number == 3 {
           point = point + 1
            
        } else if number == 4 {
           point = point + 1
    }
        pointlabel.text = String(point!)
        
        number = Int.random(in: 1...4)
        
        if number == 1 {
            image1.image = UIImage(named: "ta1")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3")
            
        } else {
            image1.image = UIImage(named: "ta4")
            
        }
       
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "result") {
            let result: game2Controller = (segue.destination as? game2Controller)!
            // ViewControllerのtextVC2にメッセージを設定
            result.number = point
        }
    }
}

