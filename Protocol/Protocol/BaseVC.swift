//
//  BaseVC.swift
//  Protocol
//
//  Created by JSP_MacBookPro on 2020/11/01.
//

import UIKit

open class BaseVC: UIViewController {
    var bundleIdentifier: String = ""
    
    open class func getController(_ member: String) -> UIViewController {
        let st = UIStoryboard(name: "Main", bundle: Bundle(identifier: "com.castielticket.Protocol"))
        let vc = st.instantiateViewController(withIdentifier: "BaseVC") as! BaseVC
        vc.bundleIdentifier = member
        return vc
    }
    
    open func abc() {
        
    }
}

extension BaseVC: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ExemList.allCases.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let exem = ExemList.allCases[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = exem.rawValue
        return cell
    }
}

extension BaseVC: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let exem = ExemList.allCases[indexPath.row]
        exem.start(bundleID: bundleIdentifier)
    }
}
