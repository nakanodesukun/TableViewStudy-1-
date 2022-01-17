//
//  ViewController.swift
//  TableView(1)
//
//  Created by 中野翔太 on 2022/01/17.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var tableView: UITableView!

    var a: [String] = []


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = a[indexPath.row]
        return cell
    }
   // 決定ボタン
    @IBAction func didTapButton(_ sender: Any) {
        guard textField1.text != "" else {  return alert() }
//        if textField1.text == "" {
//            alert()
//        } else {
//            a += [textField1.text!]
//        }

        a += [textField1.text!]
        textField1.text = ""
        tableView.reloadData()
    }
    // 削除ボタン
    @IBAction func deleteDidButton(_ sender: Any) {
        a = []
        tableView.reloadData()
    }
    func alert() {
        let alert = UIAlertController(title: "はにゃ⚠︎", message: "文字を入力してください", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }

}

