//
//  FirstTabVC.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/17.
//

import UIKit

class FirstTabVC: UIViewController {
    
    //MARK: - Properties
    //for contextMenu
    var imageName = ""
    var name = ""
    
    private var friendList:[FriendDataModel] = []
    private var myProfile:FriendDataModel = FriendDataModel(imageName: "friendtabProfileImg", name: "김솝트", state: "상태메시지는 여기에")
    
    //MARK: - @IBOutlet Properties
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var friendLabel: UILabel!
    
    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
        
        setFriendList()
        
        setUI()
    }
    
    func setFriendList()
        {
            friendList.append(contentsOf: [
                FriendDataModel(imageName: "profileImage1",
                                name: "안솝트",
                                state: "배고파요"),
                
                FriendDataModel(imageName: "profileImage2",
                                name: "최솝트",
                                state: "피곤해요"),
                
                FriendDataModel(imageName: "profileImage3",
                                name: "정솝트",
                                state: "시험언제끝나죠?"),
                
                FriendDataModel(imageName: "profileImage4",
                                name: "이솝트",
                                state: "ㅠㅠㅠㅠ"),
                
                FriendDataModel(imageName: "profileImage5",
                                name: "유솝트",
                                state: "나는 상태메세지!"),
                
                FriendDataModel(imageName: "profileImage6",
                                name: "박솝트",
                                state: "원하는대로 바꿔보세요 ^_^"),
                
                FriendDataModel(imageName: "profileImage7",
                                name: "최솝트",
                                state: "넘 덥다.."),
                
                FriendDataModel(imageName: "profileImage8",
                                name: "원솝트",
                                state: "배고파요"),
                
                FriendDataModel(imageName: "profileImage9",
                                name: "투솝트",
                                state: "내꿈은 대나무부자"),
                
                FriendDataModel(imageName: "profileImage10",
                                name: "권솝트",
                                state: "걱정말라구!")
            ])
        }
    
    private func setUI() {
        friendLabel.text = "친구"
        friendLabel.font = UIFont.boldSystemFont(ofSize: 22)
        tableView.separatorStyle = .none
    }
    
    private func registerCell() {
        let myProfileCell = UINib(nibName: "MyProfileCell", bundle: nil)
        tableView.register(myProfileCell, forCellReuseIdentifier: MyProfileCell.identifier)
        
        let friendCell = UINib(nibName: "FriendCell", bundle: nil)
        tableView.register(friendCell, forCellReuseIdentifier: FriendCell.identifier)
    }
    
//    func makeContextMenu() -> UIViewController {
//        let storyboard = UIStoryboard(name: "MyTab", bundle: nil)
//        guard let vc = storyboard.instantiateViewController(identifier: "MyTabVC") as? MyTabVC else {
//            return UIViewController()
//        }
//        vc.name = name
//        vc.profileImage = imageName
//
//        return vc
//    }
}

//MARK: - UITableViewDelegates

extension FirstTabVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myTabVC = UIStoryboard.init(name: "MyTab", bundle: nil)
        guard let nextVC = myTabVC.instantiateViewController(identifier: "MyTabVC") as? MyTabVC else {
            return
        }
        //overFullScreen, overCurrentContext 는 반투명도를 조절해서 뒤의 view 를 볼 수 있다.
        nextVC.modalPresentationStyle = .overFullScreen
        nextVC.view.alpha = 1
        
        if indexPath.row == 0 {
            nextVC.nameLabel.text = myProfile.name
            nextVC.profileImageView.image = UIImage(named: myProfile.image)
        } else {
            nextVC.nameLabel.text = friendList[indexPath.row-1].name
            nextVC.profileImageView.image = UIImage(named: friendList[indexPath.row-1].image)
        }
        
        self.present(nextVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 73
        } else {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        let chat = UIAction(title: "채팅하기") { _ in }
        let voiceTalk = UIAction(title: "보이스톡") { _ in }
        let faceTalk = UIAction(title: "페이스톡") { _ in }
        let gift = UIAction(title: "선물하기") { _ in }
        
//        self.imageName = friendList[indexPath.row].image
//        self.name = friendList[indexPath.row].name
        
        let storyboard = UIStoryboard(name: "MyTab", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "MyTabVC") as? MyTabVC else {
            return UIContextMenuConfiguration()
        }
        vc.name = friendList[indexPath.row].name
        vc.profileImage = friendList[indexPath.row].image
        
        
        return UIContextMenuConfiguration(identifier: nil, previewProvider: { return vc }) { _ in
            UIMenu(title: "", children: [chat, voiceTalk, faceTalk, gift])
        }
    }
}

//MARK: - UITableViewDataSources

extension FirstTabVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let myProfileCell = tableView.dequeueReusableCell(withIdentifier: MyProfileCell.identifier, for: indexPath) as? MyProfileCell else {
                return UITableViewCell()
            }
            myProfileCell.setData(image: myProfile.image,
                              name: myProfile.name,
                              state: myProfile.state)

            return myProfileCell
        } else {
            guard let friendCell = tableView.dequeueReusableCell(withIdentifier: FriendCell.identifier, for: indexPath) as? FriendCell else {
                return UITableViewCell()
            }
            friendCell.setData(image: friendList[indexPath.row-1].image,
                               name: friendList[indexPath.row-1].name,
                               state: friendList[indexPath.row-1].state)
            
            return friendCell
        }
    }
    
    
    
}
