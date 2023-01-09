import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: koromon1)
        view?.addSubview(imageView)
        
        imagemView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
