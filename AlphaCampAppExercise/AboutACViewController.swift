//
//  AboutACViewController.swift
//  AlphaCampAppExercise
//
//  Created by 張智涵 on 2016/6/25.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class AboutACViewController: UIViewController {
    
    
    @IBOutlet weak var aboutImageView: UIImageView!
    @IBOutlet weak var aboutNameLabel: UILabel!
    @IBOutlet weak var aboutDicLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!

    let aboutBernard = aboutDetail(name: "Bernard Chan", description: "ALPHA Camp 創辦人。TMI 駐場創業家，曾任 Yahoo！亞太區廣告業務總監。美國MIT大學創業論壇mentor", image: "bernard.jpg")
    let aboutFrank = aboutDetail(name: "陳建銘 | Frank Chen", description: "前 Yahoo! 奇摩董事總經理。以開放創新與策略合作不斷創造具規模經濟的商業模式", image: "frank.png")
    let aboutMark = aboutDetail(name: "許安德 | Mark Hsu", description: "創投 Pinehurst Advisors 合夥人 & 新浪網及 KKbox 的共同創辦人。活躍天使投資人", image: "Mark.png")
    let aboutIhower = aboutDetail(name: "iHower Chang", description: "Ruby on Rails 實戰聖經作者，前 Faria Systems CTO，多次 COSCUP、OSDC.TW、台灣與中國RubyCong、日本RubyKaigi 大會講者", image: "ihower.jpg")
    let aboutShyne = aboutDetail(name: "Shyne Tseng", description: "GetProperly 共同創辦人，台大資管MBA，史丹佛大學電腦科學碩士，旅居矽谷，愛好旅行、美食和科技", image: "Shyne.jpg")
    let aboutBrain = aboutDetail(name: "方鶴 | Brian Fang", description: "FUNTEK軟體架構師，5945呼叫師傅共同創辦人，前CyberLink資深工程師。作品Picaca獲選為Apple featured app (2013/08)，暢銷書《iPhone SDK 3 Programming 應用程式開發》作者", image: "Brain.jpg")
    let aboutAbby = aboutDetail(name: "Abby Hsu", description: "渴望突破體制內教育的大三生，在自我探索的過程中夾雜著迷惘與孤單，靠著網路的學習資源、媒體、各式專業書籍，逐漸理出自己的未來規劃，因此決定報名 Bootcamp，希望能藉由課程接觸網路新創的世界，培養數位行銷的專業能力，朝自己的夢想邁進。", image: "Abby.jpg")
    let aboutKung = aboutDetail(name: "Kung", description: "台大獸醫研究所畢業，從台北到南部從事大動物獸醫師的工作，在全台灣各個牧場出診照顧乳牛，但是在傳統的行業當中卻期待能夠擁有新創的思維，開啟一條不一樣的路。來到 ALPHA Camp 學習一顆靈活的行銷頭腦，期待成為改變產業的橋樑。", image: "Kung.jpg")
    let aboutAnthony = aboutDetail(name: "Anthony Liu", description: "伊利諾大學香檳分校物理系，退伍後放棄到美國念研究所的機會，專心投注於自己開發的通訊輔助 app，希望透過 ALPHA Camp 認識更多有志創業的夥伴，激盪彼此想法，並學習數位行銷為未來的創業之路做準備。", image: "anthony.jpg")
    
    let logoPic = UIImage(named: "alpha-logo-titleview.png")

    override func viewDidLoad() {
        super.viewDidLoad()
        self.aboutNameLabel.text = aboutBernard.name
        self.aboutDicLabel.text = aboutBernard.description
        self.aboutImageView.image = UIImage(named: aboutBernard.image)
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        self.navigationItem.titleView = UIImageView(image: logoPic)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func nextButton(sender: AnyObject) {
        if (self.aboutNameLabel.text == aboutBernard.name) {
            self.aboutNameLabel.text = aboutFrank.name
            self.aboutDicLabel.text = aboutFrank.description
            self.aboutImageView.image = UIImage(named: aboutFrank.image)
        } else if (self.aboutNameLabel.text == aboutFrank.name) {
            self.aboutNameLabel.text = aboutMark.name
            self.aboutDicLabel.text = aboutMark.description
            self.aboutImageView.image = UIImage(named: aboutMark.image)
        } else if (self.aboutNameLabel.text == aboutMark.name) {
            self.aboutNameLabel.text = aboutIhower.name
            self.aboutDicLabel.text = aboutIhower.description
            self.aboutImageView.image = UIImage(named: aboutIhower.image)
            segmentedControl.selectedSegmentIndex = 1
        } else if (self.aboutNameLabel.text == aboutIhower.name) {
            self.aboutNameLabel.text = aboutShyne.name
            self.aboutDicLabel.text = aboutShyne.description
            self.aboutImageView.image = UIImage(named: aboutShyne.image)
        } else if (self.aboutNameLabel.text == aboutShyne.name) {
            self.aboutNameLabel.text = aboutBrain.name
            self.aboutDicLabel.text = aboutBrain.description
            self.aboutImageView.image = UIImage(named: aboutBrain.image)
        } else if (self.aboutNameLabel.text == aboutBrain.name) {
            self.aboutNameLabel.text = aboutAbby.name
            self.aboutDicLabel.text = aboutAbby.description
            self.aboutImageView.image = UIImage(named: aboutAbby.image)
            segmentedControl.selectedSegmentIndex = 2
        } else if (self.aboutNameLabel.text == aboutAbby.name) {
            self.aboutNameLabel.text = aboutKung.name
            self.aboutDicLabel.text = aboutKung.description
            self.aboutImageView.image = UIImage(named: aboutKung.image)
        } else if (self.aboutNameLabel.text == aboutKung.name) {
            self.aboutNameLabel.text = aboutAnthony.name
            self.aboutDicLabel.text = aboutAnthony.description
            self.aboutImageView.image = UIImage(named: aboutAnthony.image)
        }
    }
    
    
    
    @IBAction func previousButton(sender: AnyObject) {
        if (self.aboutNameLabel.text == aboutAnthony.name) {
            self.aboutNameLabel.text = aboutKung.name
            self.aboutDicLabel.text = aboutKung.description
            self.aboutImageView.image = UIImage(named: aboutKung.image)
        } else if (self.aboutNameLabel.text == aboutKung.name) {
            self.aboutNameLabel.text = aboutAbby.name
            self.aboutDicLabel.text = aboutAbby.description
            self.aboutImageView.image = UIImage(named: aboutAbby.image)
        } else if (self.aboutNameLabel.text == aboutAbby.name) {
            self.aboutNameLabel.text = aboutBrain.name
            self.aboutDicLabel.text = aboutBrain.description
            self.aboutImageView.image = UIImage(named: aboutBrain.image)
            segmentedControl.selectedSegmentIndex = 1
        } else if (self.aboutNameLabel.text == aboutBrain.name) {
            self.aboutNameLabel.text = aboutShyne.name
            self.aboutDicLabel.text = aboutShyne.description
            self.aboutImageView.image = UIImage(named: aboutShyne.image)
        } else if (self.aboutNameLabel.text == aboutShyne.name) {
            self.aboutNameLabel.text = aboutIhower.name
            self.aboutDicLabel.text = aboutIhower.description
            self.aboutImageView.image = UIImage(named: aboutIhower.image)
        } else if (self.aboutNameLabel.text == aboutIhower.name) {
            self.aboutNameLabel.text = aboutMark.name
            self.aboutDicLabel.text = aboutMark.description
            self.aboutImageView.image = UIImage(named: aboutMark.image)
            segmentedControl.selectedSegmentIndex = 0
        } else if (self.aboutNameLabel.text == aboutMark.name) {
            self.aboutNameLabel.text = aboutFrank.name
            self.aboutDicLabel.text = aboutFrank.description
            self.aboutImageView.image = UIImage(named: aboutFrank.image)
        } else if (self.aboutNameLabel.text == aboutFrank.name) {
            self.aboutNameLabel.text = aboutBernard.name
            self.aboutDicLabel.text = aboutBernard.description
            self.aboutImageView.image = UIImage(named: aboutBernard.image)
        }
    }
    
    @IBAction func aboutACSegment(sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex {
        case 0: self.aboutNameLabel.text = aboutBernard.name
                self.aboutDicLabel.text = aboutBernard.description
                self.aboutImageView.image = UIImage(named: aboutBernard.image)
        case 1: self.aboutNameLabel.text = aboutIhower.name
                self.aboutDicLabel.text = aboutIhower.description
                self.aboutImageView.image = UIImage(named: aboutIhower.image)
        case 2: self.aboutNameLabel.text = aboutAbby.name
                self.aboutDicLabel.text = aboutAbby.description
                self.aboutImageView.image = UIImage(named: aboutAbby.image)
        default: break
        }
    }

    
    

}
