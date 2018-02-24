//
//  Registration.swift
//  HotelManzana
//
//  Created by Elias Brunner on 21.02.18.
//  Copyright © 2018 Elias Brunner. All rights reserved.
//

import Foundation

struct Registration {
    
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
    
    
}
