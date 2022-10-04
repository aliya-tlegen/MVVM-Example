//
//  ViewData.swift
//  TestMVVM
//
//  Created by Алия Тлеген on 04.10.2022.
//

import Foundation

enum ViewData {
    case initialization
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let phoneNumber: String?
    }
}
