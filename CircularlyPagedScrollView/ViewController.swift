//
//  ViewController.swift
//  CircularlyPagedScrollView
//
//  Created by Liwei Zhang on 2016-12-10.
//  Copyright © 2016 Liwei Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.yellow
        
        var views = [UIView]()
        for i in 0..<5 {
            let aView = createView(number: i)
            views.append(aView)
        }
        let scrollView = CircularlyPagedScrollView(frame: view.frame, viewsToRotate: views, scrollHorizontally: false)
        scrollView.backgroundColor = UIColor.brown
        scrollView.resetMiddleViewShown(middle: scrollView.viewsToRotate[4])
        view.addSubview(scrollView)
    }
    
    func createView(number: Int) -> UIView {
        let aView = UIView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: view.frame.size))
        let textView = UITextView(frame: CGRect(origin: CGPoint(x: 100, y: 100), size: CGSize(width: 30, height: 30)))
        textView.text = "\(number)"
        textView.isUserInteractionEnabled = false
        aView.addSubview(textView)
        return aView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

