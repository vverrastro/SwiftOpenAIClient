//
//  File.swift
//  
//
//  Created by Vito Verrastro on 26/02/24.
//

import Foundation
import HTTPTypes
import OpenAPIRuntime

struct AuthMiddleware: ClientMiddleware {

    let apiKey: String
    
    func intercept(_ request: HTTPRequest, body: HTTPBody?, baseURL: URL, operationID: String, next: (HTTPRequest, HTTPBody?, URL) async throws -> (HTTPResponse, HTTPBody?)) async throws -> (HTTPResponse, HTTPBody?) {
        var request = request
        request.headerFields.append(.init(name: .authorization, value: "Bearer \(apiKey)"))
        return try await next(request, body, baseURL)
    }
    
}
