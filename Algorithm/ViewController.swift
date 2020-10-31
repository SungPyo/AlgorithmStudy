//
//  ViewController.swift
//  Algorithm
//
//  Created by JSP_MacBookPro on 2020/10/31.
//

import UIKit
import Protocol

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private func showController(member: String) {
        let framework = Bundle.allFrameworks.compactMap{$0.classNamed("Protocol.BaseVC") as? BaseVC.Type}.first
        guard let controller = framework?.getController(member) else { return print("없어?")}
        navigationController?.pushViewController(controller, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Members.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let member = Members.allCases[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = member.name
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let member = Members.allCases[indexPath.row]
        showController(member: member.rawValue)
    }
}

