//
//  CollectionViewController.swift
//  day_03
//
//  Created by Meowth Ourea on 8/14/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    @IBOutlet var imageCollectionView: UICollectionView!
    
    let imagesArr: [URL] = [
        URL(string: "https://galeri13.uludagsozluk.com/637/vasak_1107893.png")!,
        URL(string: "https://cdn.fishki.net/upload/post/2019/12/16/3171929/16f168aed03bfd48605a2df0308239f6.jpg")!,
        URL(string: "https://wallpaper.sc/id/android/wp-content/uploads/2018/08/android-1440x1280-wallpaper_00876.jpg")!,
        URL(string: "https://funart.pro/uploads/posts/2021-10/1633894517_28-funart-pro-p-broshennii-kotenok-zhivotnie-krasivo-foto-30.jpg")!,
        URL(string: "https://yandex.ru")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imagesArr.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImagesCollectionViewCell
        let imgUrl = imagesArr[indexPath.row]
        
        DispatchQueue.global().async {
            
            let data = try? Data(contentsOf: imgUrl)
            if data == nil {
                let urlName = self.imagesArr[indexPath.row]

                let alertController = UIAlertController(title: "Error", message: "Cannot acces to \(urlName)", preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            } else {
                DispatchQueue.main.async {
                    cell.loader.hidesWhenStopped = true
                    cell.loader.stopAnimating()
                    cell.imageLabel.image = UIImage(data: data!)
                }
            }
        }
        
        cell.loader.startAnimating()
        cell.loader.color = (UIColor.white)
        cell.layer.borderColor = (UIColor.black.cgColor)
        cell.layer.backgroundColor = (UIColor.black.cgColor)
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 5
    
        // Configure the cell
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seq = segue.destination as! ViewController
        let cell = sender! as! ImagesCollectionViewCell
        if cell.imageLabel.image != nil {
            seq.image = cell.imageLabel.image!
        } else {
            let alertController = UIAlertController(title: "Error", message: "Cannot acces to this image", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
