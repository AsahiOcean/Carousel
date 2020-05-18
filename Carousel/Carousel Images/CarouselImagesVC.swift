import UIKit

class CarouselImagesVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var backgroundImage: UIImageView!
    let ImagesArray = ["1","2","3","4","5","6","7","8"]
    fileprivate let p: CGFloat = 20
    fileprivate let ratio: CGFloat = UIScreen.main.bounds.height / UIScreen.main.bounds.width
    fileprivate let W = UIScreen.main.bounds.width
    fileprivate let H = UIScreen.main.bounds.height
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    }
    extension CarouselImagesVC : UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            ImagesArray.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
            cell.ImageView.image = UIImage(named: self.ImagesArray[indexPath.row])
            return cell
        }
    }

    extension CarouselImagesVC : UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            CGSize(width: W*0.9, height: H*0.75)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            if ratio > 1.7 { return p*2 } else { return p*4 }
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if ratio > 1.7 {
        return UIEdgeInsets(top: 0, left: p, bottom: 0, right: p)
        } else {
        return UIEdgeInsets(top: 0, left: p*3, bottom: 0, right: p*3)
        }}
    }
