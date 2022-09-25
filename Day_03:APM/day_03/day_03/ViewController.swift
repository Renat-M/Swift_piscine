//
//  ViewController.swift
//  day_03
//
//  Created by Meowth Ourea on 8/14/22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollMy: UIScrollView!
    var imageView : UIImageView?
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView = UIImageView(image: image)
        scrollMy.addSubview(imageView!)
        scrollMy.contentSize = (imageView?.frame.size)!
        scrollMy.maximumZoomScale = 100
    }
    
    func setZoomScale() {
        
        var minZoom = min(self.view.bounds.size.width / imageView!.bounds.size.width, self.view.bounds.size.height / imageView!.bounds.size.height);
        
        if (minZoom > 1.0) {
            minZoom = 1.0;
        }
        
        scrollMy.minimumZoomScale = minZoom;
        scrollMy.zoomScale = minZoom;
        
    }
    
    override func viewWillLayoutSubviews() {
        setZoomScale()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }


}

