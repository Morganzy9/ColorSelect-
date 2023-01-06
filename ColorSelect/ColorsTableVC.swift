//
//  ColorsTableVC.swift
//  ColorSelect
//
//  Created by Ислам Пулатов on 1/4/23.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addColors()
    }
    
    
    func addColors() {
        
        for _ in 0..<50 {
            colors.append(createRandomColors())
        }
        
    }
    
    
    func createRandomColors() -> UIColor {
        
        let randColor = UIColor(red: CGFloat.random(in: 0...1),
                                green: CGFloat.random(in: 0...1),
                                blue: CGFloat.random(in: 0...1),
                                alpha: 1 )
        
        return randColor
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsFullVC
        destVC.color = sender as? UIColor
        
    }
}

extension ColorsTableVC : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsFullVC", sender: color)
    }
    
    
}

