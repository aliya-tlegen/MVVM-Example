//
//  MainViewModel.swift
//  TestMVVM
//
//  Created by Алия Тлеген on 04.10.2022.
//

import Foundation

protocol MainViewModelProtocol {
    var updateViewData: ((ViewData) -> ())? { get set }
    func startFetch()
    func error()
}

final class MainViewModel: MainViewModelProtocol {
    
    public var updateViewData: ((ViewData) -> ())?
    
    init() {
        updateViewData?(.initialization)
    }
    
    public func startFetch() {
//        // parse data
//        updateViewData?(.loading(ViewData.Data(icon: nil,
//                                               title: nil,
//                                               description: nil,
//                                               phoneNumber: nil)))
        
        updateViewData?(.success(ViewData.Data(icon: "success",
                                                     title: "success",
                                                     description: "Good",
                                                     phoneNumber: nil)))
    }
    
    public func error() {
        updateViewData?(.failure(ViewData.Data(icon: "error",
                                                 title: "error",
                                                 description: "not user",
                                                 phoneNumber: nil)))
    }
}
