//
//  ContentView.swift
//  TestTelegrtaph
//
//  Created by Dima Petrov on 21.04.2022.
//

import SwiftUI
import Telegraph

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                startServer()
            }
    }
    
    private func startServer() {
        do {
            let caCertificateURL = Bundle.main.url(forResource: "cert", withExtension: "der")!
            let caCertificate = Certificate(derURL: caCertificateURL)!

            let identityURL = Bundle.main.url(forResource: "filename", withExtension: "p12")!
            let identity = CertificateIdentity(p12URL: identityURL, passphrase: "1234")!
            let server = Server(identity: identity, caCertificates: [caCertificate])
            
            try server.start(port: 8080)
            server.route(.GET, "hello") { (.ok, "Server is running") }
            print(server.isRunning, "server")
        } catch {
            print("server failed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
