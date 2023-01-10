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
        let attibutedText = NSMutableAttributedString(string: "Koromon. Nível: Bebé II", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
        attibutedText.append(NSAttributedString(string: "\n\n\nUm pequeno Digimon que derramou a penugem que cobria a sua superfície e cujo corpo ficou maior. Embora tenha se tornado capaz de se mover de forma mais ativa, ainda é incapaz de lutar. Ele pode criar bolhas da sua boca para intimidar os seus inimigos.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attibutedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Voltar", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próximo", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view?.addSubview(descriptionTextView)
        
        setuplayout()
        setupButtomControls()
    }
    
    private func setupButtomControls() {
//        view.addSubview(previousButton)
//        previousButton.backgroundColor = .red
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        
        
        let buttomControlsStackView = UIStackView(arrangedSubviews: [yellowView, greenView, blueView])
        buttomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        buttomControlsStackView.distribution = .fillEqually
//        buttomControlsStackView.axis = .vertical
        
        view.addSubview(buttomControlsStackView)
        
        
        
        NSLayoutConstraint.activate([
            buttomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            
        
        ])
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
            
            topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
            
            descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
            descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
            descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
            descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
