import UIKit

class ViewController: UIViewController {
    
    var koromonimageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "koromon1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: UIImage(named: "koromon1"))
        view?.addSubview(koromonimageView)
    }
        
        private func setuplayout(){
            koromonimageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            koromonimageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
            koromonimageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
            koromonimageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
}
