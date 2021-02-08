//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 小西星七 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["昨年","夕方ごろ","昨日","夏キャンプの時","1940年","3時間前"]
    let dokoArray: [String] = ["クリエで","新橋演舞場で","ClubHouseで","横国で","市民プールで","ジャンカラで"]
    let dareArray: [String] = ["7MEN侍が","如恵留くんが","君が","隣人が","太郎が","日本国民が","こにーが"]
    let doshitaArray: [String] = ["ライブした","踊っていた","登壇した","代表認定に選ばれた","流れた","喉を潰した"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func change() {
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index = index + 1
        
        if index > 5{
            index = 0
        }
    }
    
    @IBAction func reset() {
        
        itsuLabel.text = "___"
        dokoLabel.text = "___"
        dareLabel.text = "___"
        doshitaLabel.text = "___"
        
        index = 0
        
    }
    
    @IBAction func random() {
        
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }
}

