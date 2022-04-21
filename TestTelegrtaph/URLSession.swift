//
//  URLSession.swift
//  SafePlace
//
//  Created by Dima Petrov on 21.04.2022.
//  Copyright © 2022 Сергей Гаврилко. All rights reserved.
//

import Foundation
import Telegraph

// https://github.com/Building42/Telegraph#http-client

// вот этот кусок кода вообще не компилиться

//let session = URLSession(configuration: .default, delegate: self, delegateQueue: nil)
//let tlsPolicy = TLSPolicy(commonName: "localhost", certificates: [caCertificate])
//
//extension YourClass: URLSessionDelegate {
//  func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge,
//      completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
//    // The TLSPolicy class will do most of the work for us
//    let credential = tlsPolicy.evaluateSession(trust: challenge.protectionSpace.serverTrust)
//    completionHandler(credential == nil ? .cancelAuthenticationChallenge : .useCredential, credential)
//  }
//}
