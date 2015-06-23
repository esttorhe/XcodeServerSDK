//: Playground - noun: a place where people can play

guard #available(iOS 7, OSX 10.10, *) else { fatalError("Trying to run the playground with invalid an invalid OS.") }

import Foundation
import XcodeServerSDK
import XCPlayground

let serverConfig = XcodeServerConfig(host: "https://127.0.0.1", user: "MacUser", password: "Secr3t")

let server = XcodeServerFactory.server(serverConfig)

server.getBots { (bots, error) -> () in
    
    print(error)
    print(bots)
}

XCPSetExecutionShouldContinueIndefinitely(true)

print("🎉 If I got here the playground loaded the custom framework.")
