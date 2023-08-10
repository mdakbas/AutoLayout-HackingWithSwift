//
//  HomeVC.swift
//  AutoLayout-HackingWithSwift
//
//  Created by Mert Deniz Akbaş on 10.08.2023.
//

import UIKit

protocol HomeVCProtocol: AnyObject {
    func configureLabel()
}

final class HomeVC: UIViewController {
    private var viewModel = HomeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.viewDidLoad()

    }


}
extension HomeVC: HomeVCProtocol {
    func configureLabel() {
        let label1 = UILabel()
        label1.setLabel(constraints: false, backgroundColor: .systemRed, text: "THESE")
        let label2 = UILabel()
        label2.setLabel(constraints: false, backgroundColor: .systemBlue, text: "ARE")
        let label3 = UILabel()
        label3.setLabel(constraints: false, backgroundColor: .systemCyan, text: "SOME")
        let label4 = UILabel()
        label4.setLabel(constraints: false, backgroundColor: .systemGray, text: "AWESOME")
        let label5 = UILabel()
        label5.setLabel(constraints: false, backgroundColor: .systemPink, text: "LABELS")
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        //        let viewsDictionary = ["label1" : label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        //        for label in viewsDictionary.keys {
        //            view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        //
        //        }
        //        let metrics = ["labelHeight" : 88]
        //        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
        //
        //    }
        var previous: UILabel?
        for label in [label1,label2,label3,label4,label5] {

            NSLayoutConstraint.activate([
                label.widthAnchor.constraint(equalTo: view.widthAnchor),
                label.heightAnchor.constraint(equalToConstant: 88),
               // label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
              //  label.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50)
            ])
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            }else{
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            }
            previous = label
        }
    }
}
