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
    var reciever: String!
    var str  = ""
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
        if reciever == "easy" {
            number = Int.random(in: 1...4)
        } else if
            reciever == "normal" {
            number = Int.random(in: 1...7)
        } else
        {  number = Int.random(in: 1...11)
        }
        
        
        if number == 1 {
            image1.image = UIImage(named: "ta1g")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2g")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3b")
            
        } else if number == 4 {
            image1.image = UIImage(named: "ta4b")
            
        } else if number == 5 {
            image1.image = UIImage(named: "ta6g")
            
        } else if number == 6 {
            image1.image = UIImage(named: "ta7g")
            
        } else if number == 7 {
            image1.image = UIImage(named: "ta8b")
            
        } else if number == 8 {
            image1.image = UIImage(named: "ta9b")
            
        } else if number == 9 {
            image1.image = UIImage(named: "ta10g")
            
        } else if number == 10 {
            image1.image = UIImage(named: "ta11b")
            
        } else {
            image1.image = UIImage(named: "ta12b")
            
            
            
        }
        button1.isHidden = true
        button2.isHidden = false
        button3.isHidden = false
    }
    
    // 良いたい焼きのボタンが押された時
    // numberが１，２の時は１点
    @IBAction func b (){
        if reciever == "easy" {
            number = Int.random(in: 1...4)
        } else if
            reciever == "normal" {
            number = Int.random(in: 1...7)
        } else
        {  number = Int.random(in: 1...11)
        }
        if number == 1 {
            point = point + 1
            
        } else if number == 2 {
            point = point + 1
            
        } else if number == 5 {
            point = point + 1
            
        } else if number == 6 {
            point = point + 1
            
        } else if number == 9 {
            point = point + 1
            
            
        } else if number == 3 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 4 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 7 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 8 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 10 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 11 {
            self.performSegue(withIdentifier: "result", sender: nil)
        }
        pointlabel.text = String(point!)
        
       
        
        if number == 1 {
            image1.image = UIImage(named: "ta1g")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2g")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3b")
            
        } else if number == 4 {
            image1.image = UIImage(named: "ta4b")
            
        } else if number == 5 {
            image1.image = UIImage(named: "ta6g")
            
        } else if number == 6 {
            image1.image = UIImage(named: "ta7g")
            
        } else if number == 7 {
            image1.image = UIImage(named: "ta8b")
            
        } else if number == 8 {
            image1.image = UIImage(named: "ta9b")
            
        } else if number == 9 {
            image1.image = UIImage(named: "ta10g")
            
        } else if number == 10 {
            image1.image = UIImage(named: "ta11b")
            
        } else {
            image1.image = UIImage(named: "ta12b")
            
            
        }
        
    }
    
    // 悪いたい焼きのボタンが押された時
    // numberが3,4の時はおわり
    @IBAction func c (){
        if reciever == "easy" {
            number = Int.random(in: 1...4)
        } else if
            reciever == "normal" {
            number = Int.random(in: 1...7)
        }else
        {  number = Int.random(in: 1...11)
        }
        
        if number == 1 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 2 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 5 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 6 {
            self.performSegue(withIdentifier: "result", sender: nil)
            
        } else if number == 9 {
            self.performSegue(withIdentifier: "result", sender: nil)
        } else if number == 3 {
            point = point + 1
            
        } else if number == 4 {
            point = point + 1
            
        } else if number == 7 {
            point = point + 1
            
        } else if number == 8 {
            point = point + 1
            
        } else if number == 10 {
            point = point + 1
            
        } else if number == 11 {
            point = point + 1
        }
        pointlabel.text = String(point!)
        
       
        if number == 1 {
            image1.image = UIImage(named: "ta1g")
            
            
        } else if number == 2 {
            image1.image = UIImage(named: "ta2g")
            
        } else if number == 3 {
            image1.image = UIImage(named: "ta3b")
            
        } else if number == 4 {
            image1.image = UIImage(named: "ta4b")
            
        } else if number == 5 {
            image1.image = UIImage(named: "ta6g")
            
        } else if number == 6 {
            image1.image = UIImage(named: "ta7g")
            
        } else if number == 7 {
            image1.image = UIImage(named: "ta8b")
            
        } else if number == 8 {
            image1.image = UIImage(named: "ta9b")
            
        } else if number == 9 {
            image1.image = UIImage(named: "ta10g")
            
        } else if number == 10 {
            image1.image = UIImage(named: "ta11b")
            
        } else {
            image1.image = UIImage(named: "ta12b")
            
            
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "result") {
            let result: game2Controller = (segue.destination as? game2Controller)!
            // ViewControllerのtextVC2にメッセージを設定
            result.number = point
            
            let saveData: UserDefaults = UserDefaults.standard
            let count = saveData.integer(forKey: "count")
            saveData.setValue(count + 1, forKey: "count")
        }
    }
}

