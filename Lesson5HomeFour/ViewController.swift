//
//  ViewController.swift
//  Lesson5HomeFour
//
//  Created by user on 18/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var news: [NewsModel] = []
    
    var titleLogo = UIImageView()

    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        return view
    }()

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        twoviewConstr()
        loadNews()
    }
    
    private func twoviewConstr() {
        
        view.backgroundColor = UIColor(red: 255/155, green: 0/255, blue: 100/255, alpha: 1)
        
        view.addSubview(titleLogo)
        titleLogo.image = UIImage(named: "apl3")
        titleLogo.snp.makeConstraints { make in
            make.width.equalTo(150)
            make.height.equalTo(80)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(30)
    
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(titleLogo.snp.bottom)
            make.left.right.bottom.equalToSuperview()
            
        }
    }
    
    private func loadNews() {
        
        news.append(NewsModel(title: "Конте пока не думал о январских трансферах", description: "Наставник Тоттенхэма Антонио Конте заявил, что пока не строил планов насчет зимнего трансферного окна.", image: "konte"))
        news.append(NewsModel(title: "Руди Гарсия прошел собеседование в Юнайтед", description: "Руди Гарсия прошел собеседование на роль главного тренера Манчестер Юнайтед на остаток сезона.", image: "garcia"))
        news.append(NewsModel(title: "Тиаго: Переход в Ливерпуль был правильным решением", description: "Полузащитник Тиаго Алькантара уверен, что его переход в Ливерпуль был правильным решением.", image: "tiago"))
        news.append(NewsModel(title: "Филлипс получил травму головы в ночном клубе", description: "Полузащитник Лидса и сборной Англии Калвин Филлипс получил травму головы в ночном клубе.", image: "p"))
        news.append(NewsModel(title: "Почеттино: Я очень счастлив в ПСЖ", description: "Главный тренер ПСЖ Маурисио Почеттино охладил слухи, связывающие его с переходом в Манчестер Юнайтед", image: "m"))
        news.append(NewsModel(title: "Клеберсон советует Райсу выбрать Сити", description: "Экс-игрок Манчестер Юнайтед Клеберсон посоветовал полузащитнику Вест Хэма Деклану Райсу отвергнуть его бывший клуб и перейти в Манчестер Сити", image: "r"))
        news.append(NewsModel(title: "Мерсон: План Сульшера на сезон полетел к чертям, когда они купили Роналду", description: "Эксперт Sky Sports Пол Мерсон считает, к увольнению Оле Гуннара Сульшера с поста главного тренера Манчестер Юнайтед привела покупка нападающего Криштиану Роналду у Ювентуса минувшим летом.", image: "ron"))
        news.append(NewsModel(title: "Тухель заверил, что Абрамович не потерял интерес к Челси", description: "Главный тренер Челси Томас Тухель заявил, что владелец клуба Роман Абрамович не утратил интерес к синим, несмотря на решение не посещать предстоящий матч против", image: "t"))
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = NewsCell()
        let model = news[indexPath.row]
        
        cell.titleName.text = model.title
        cell.titleDescription.text = model.description
        cell.titleImage.image = UIImage(named: model.image)
        
        return cell
    }
}
