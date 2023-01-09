import UIKit

class ViewController: UIViewController {
    
    var koromonimageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "koromon1"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Um pequeno Digimon que derramou a penugem que cobria a sua superfície e cujo corpo ficou maior. Embora tenha se tornado capaz de se mover de forma mais ativa, ainda é incapaz de lutar. Ele pode criar bolhas da sua boca para intimidar os seus inimigos."
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view?.addSubview(koromonimageView)
        view?.addSubview(descriptionTextView)
        
        setuplayout()
    }
        
        private func setuplayout(){
            let topImageContainerView = UIView()
            topImageContainerView.backgroundColor = .blue
            view.addSubview(topImageContainerView)
            topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
            
            topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            
            topImageContainerView.addSubview(koromonimageView)
            
            koromonimageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
            koromonimageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
            koromonimageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier: 0.5).isActive = true
            
//            koromonimageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
//            koromonimageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
            topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
            
            descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
            descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
