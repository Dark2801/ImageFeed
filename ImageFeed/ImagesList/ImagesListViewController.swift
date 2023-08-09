//
//  ViewController.swift
//  ImageFeed
//
//  Created by Андрей Мерзликин on 08.08.2023.
//

import UIKit

class ImagesListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func configCell(for cell: ImagesListCell) { }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // метод, который из всех ячеек, зарегистрированных в таблице, возвращает ячейку по заранее выбранному идентификатору
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentiFilter, for: indexPath)
        // Чтобы работать с ячейкой как с экземпляром класса ImagesListCell, нам надо провести приведение типов
        guard let imageListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }
        configCell(for: imageListCell)
        //Возвращаем ячейку
        return imageListCell
    }
    @IBOutlet private var tableView: UITableView!
    override func viewDidLoad() {
      
                super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

