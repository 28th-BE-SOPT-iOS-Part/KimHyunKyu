//
//  FifthTabVC.swift
//  assignment1-cloneCoding-Kakao
//
//  Created by kimhyungyu on 2021/04/17.
//

import UIKit

class FifthTabVC: UIViewController {

    //MARK: - Properties
    
    private var menuList:[FifthMenuDataModel] = []
    
    //MARK: - @IBOutlet Properties
    
    @IBOutlet weak var menuCollectionView: UICollectionView!
    @IBOutlet weak var moreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        menuCollectionView.delegate = self
        menuCollectionView.dataSource = self
        
        setUI()
        setMenuList()
    }
    private func setUI() {
        moreLabel.font = UIFont.boldSystemFont(ofSize: 22)
        
    }
    func setMenuList() {
        menuList.append(contentsOf: [
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "메일"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "캘린더"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "서랍"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "카카오콘"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "메이커스"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "선물하기"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "이모티콘"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "프렌즈"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "쇼핑하기"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "스타일"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "주문하기"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "멜론티켓"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "게임"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "멜론"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "헤어샵"),
            FifthMenuDataModel(menuImage: "message",
                               menuTitle: "전체서비스")
        ])
    }
}

//MARK: - UICollectionViewDelegates

extension FifthTabVC: UICollectionViewDelegate {
    
}

//MARK: - UICollectionViewDataSources

extension FifthTabVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let menuCell = menuCollectionView.dequeueReusableCell(withReuseIdentifier: FifthCollectionCell.identifier, for: indexPath) as? FifthCollectionCell else {
            return UICollectionViewCell()
        }
        menuCell.setData(image: menuList[indexPath.row].image, title: menuList[indexPath.row].title)
        
        return menuCell
    }
}

extension FifthTabVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * 70/375
        let cellHeight = cellWidth
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
}
