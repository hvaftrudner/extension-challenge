//
//  ViewController.swift
//  extension challenge
//
//  Created by Kristoffer Eriksson on 2020-11-16.
//

import UIKit

class ViewController: UIViewController {
    
    let testInt = 5
    
    var testarray = [1, 2, 3, 3, 4]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let view = UIView()
        view.bounceOut(duration: 5)
        testInt.times {print("hellO")}
        
        testarray.remove(item: 3)
        print(testarray)
        
    }

}

extension UIView {
    func bounceOut(duration: TimeInterval){
        UIView.animate(withDuration: duration, animations: {
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        })
    }
}

extension Int{
    
    func times(_ closure: () -> Void) {
        guard self > 0 else {return}
        
        for _ in 0..<self{
            closure()
        }
    }
}

extension Array where Element: Comparable {
    mutating func remove(item: Element) -> Void {
        if let firstitem = firstIndex(of: item){
            self.remove(at: firstitem)
        }
    }
}
