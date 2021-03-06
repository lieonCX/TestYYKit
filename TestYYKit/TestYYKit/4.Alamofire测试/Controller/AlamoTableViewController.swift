//
//  AlamoTableViewController.swift
//  TestYYKit
//
//  Created by lieon on 16/7/27.
//  Copyright © 2016年 lieon. All rights reserved.
//
// swiftlint:disable force_cast
// swiftlint:disable colon
// swiftlint:disable control_statement
// swiftlint:disable valid_docs
// swiftlint:disable opening_brace
// swiftlint:disable trailing_newline
// swiftlint:disable trailing_semicolon
// swiftlint:disable variable_name
// swiftlint:disable legacy_constant
// swiftlint:disable legacy_constructor
// swiftlint:disable comma
// swiftlint:disable trailing_whitespace

import UIKit
import Alamofire

class AlamoTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

  func loadData ()
  {
    
  Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"], encoding: ParameterEncoding.JSON, headers: nil).responseJSON { (response) in
        print(response.request)  // 请求对象
        print(response.response) // 响应对象
        print(response.data)     // 服务端返回的数据
    
    if let JSON = response.result.value {
        print("JSON: \(JSON)")
    }
    }
   
  }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

}
