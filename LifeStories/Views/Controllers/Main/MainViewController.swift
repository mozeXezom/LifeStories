//
//  MainViewController.swift
//  LifeStories
//
//  Created by mozeX on 19.05.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainBackgroundImage: UIImageView!
    
    var viewModel: MainViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        bannerView.isHidden = true

    }
    
    @IBAction func menuPressed(_ sender: UIButton) {
        viewModel.showMenu()
    }
    
    @IBAction func musicPressed(_ sender: UIButton) {
        viewModel.showMusicPlayer()
    }
    
    private func configure() {
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(UINib(nibName: Cell.CellName.mainCellName, bundle: nil), forCellReuseIdentifier: Cell.CellId.mainCellId)
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.CellId.mainCellId, for: indexPath) as! MainTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.showSelectedCategory()
    }
    
}
