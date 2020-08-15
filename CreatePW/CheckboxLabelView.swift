//
//  CheckboxLabelView.swift
//  CreatePW
//
//  Created by 居朝強 on 2020/08/15.
//  Copyright © 2020 Cloud.Ju. All rights reserved.
//

import UIKit
@IBDesignable

class CheckboxLabelView: UIView {
    enum TouchStatus {
        case yes
        case no
        
        var img: UIImage {
            switch self {
            case .yes:
                return UIImage(named: "check_yes")!
            case .no:
                return UIImage(named: "check_no")!
            }
        }
        
        mutating func toggle() {
            if self == .yes {
                self = .no
            } else {
                self = .yes
            }
        }
    }
    
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var touchArea: UIButton!
    
    @IBInspectable var text: String = "default"
    
    var status: TouchStatus = .no

    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib(){
        let bundle = Bundle(for: CheckboxLabelView.self)
        let view = bundle.loadNibNamed("CheckboxLabelView", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    override func draw(_ rect: CGRect) {
        self.textLabel.text = self.text
        //self.checkImage.image = UIImage(named: "check_no")!
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.textLabel.text = self.text
    }
    
    @IBAction func partsTouchUpInside(_ sender: UIButton) {
        self.status.toggle()
        self.checkImage.image = self.status.img
    }
}
