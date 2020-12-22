//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by alex-babich on 22.12.2020.
//

import Foundation

public struct WeatherModel {
    let city: String
    let temperature: String
    let description: String
    let iconName: String
    
    init(response: APIResponse) {
        city = response.name
        temperature = "\(Int(response.main.temp))"
        description = response.weather.first?.description ?? ""
        iconName = response.weather.first?.iconName ?? ""
    }
}
