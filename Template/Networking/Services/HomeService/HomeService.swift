//
//  HomeService.swift
//  TheMovieApp
//
//  Created by Anthony Tran on 19/03/2022.
//

import UIKit
import RxSwift

protocol HomeServiceType {
    
}

class HomeService: HomeServiceType, NetworkingType {
    
    let provider: ApiProvider<HomeAPI>
    
    init() {
        provider = ApiProvider(plugins: HomeService.plugins)
    }
    
}

