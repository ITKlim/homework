//
//  ViewController.swift
//  KlimTableViewTest
//
//  
//

import UIKit

// MARK: - Persons List VC

class PersonsListViewController: UIViewController {

    @IBOutlet weak var personsListTable: UITableView!

    var dataSource = PersonsDataManager.shared.makeDataSource()
    lazy var dataSourceShort = dataSource.simplified()
    lazy var dataSourceFull = dataSource.fullInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        personsListTable.dataSource = self
        personsListTable.delegate = self
    }
}

// MARK: - Table View

extension PersonsListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSourceShort.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: Strings.personsListCell.rawValue
        )
        else {
            let cell = UITableViewCell()
            cell.textLabel?.text = "ERROR. COULD NOT LOAD CELL @ \(indexPath)"
            return cell
        }

        let currentAthlete = dataSourceShort[indexPath.row]
        cell.textLabel?.text = currentAthlete
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16)

        return cell
    }
}

extension PersonsListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            vc.fullInfo = dataSourceFull [indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        
        }
    }
}
