//
//  ConfigManager.swift
//  {{ cookiecutter.app_name }}
//
//  Created by {{ cookiecutter.author }} on {% now 'local', '%d %b %Y' %}.
//  Copyright © {% now 'local', '%Y' %} {{ cookiecutter.organization_name }}. All rights reserved.
//

import Foundation

struct AppConfig: Codable {
    static let `default`: AppConfig = getInstance()

    var environment: String

    private enum CodingKeys: String, CodingKey {
        case environment = "Environment"
    }

    private init() {
        environment = ""
    }

    private static func getInstance() -> AppConfig {
        do {
            guard let infoDict = Bundle.main.infoDictionary else {
                return AppConfig()
            }

            let jsonData = try JSONSerialization.data(withJSONObject: infoDict, options: [])

            return try JSONDecoder().decode(AppConfig.self, from: jsonData)
        } catch {
            return AppConfig()
        }
    }
}
