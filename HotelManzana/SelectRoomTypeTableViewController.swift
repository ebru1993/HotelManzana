//
//  SelectRoomTypeTableViewController.swift
//  HotelManzana
//
//  Created by Elias Brunner on 24.02.18.
//  Copyright © 2018 Elias Brunner. All rights reserved.
//

import UIKit

class SelectRoomTypeTableViewController: UITableViewController {

    var roomType: RoomType?
    var delegate: SelectRoomTypeTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RoomType.rooms.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomTypeCell", for: indexPath)
        let roomType = RoomType.rooms[indexPath.row]
        cell.textLabel?.text = roomType.name
        cell.detailTextLabel?.text = "$ \(roomType.price)"
        
        if roomType == self.roomType {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        roomType = RoomType.rooms[indexPath.row]
        delegate?.didSelect(roomType: roomType!)
        tableView.reloadData()
    }
    

}

protocol SelectRoomTypeTableViewControllerDelegate {
    func didSelect(roomType: RoomType)
}
