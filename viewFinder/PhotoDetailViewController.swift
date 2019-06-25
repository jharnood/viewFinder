
import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet weak var newImage: UIImageView!
    
    var photo : Photos? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo {
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.addPhoto {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                    newImage.image = cellPhotoImage
                }
            }
        }

    }
}
