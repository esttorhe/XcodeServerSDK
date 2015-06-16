//: Playground - noun: a place where people can play

import Cocoa
import XcodeServerSDK
import XCPlayground

let serverConfig = XcodeServerConfig(host: "https://127.0.0.1", user: "MacUser", password: "Secr3t")

let server = XcodeServerFactory.server(serverConfig)

server.getBots { (bots, error) -> () in
    
    println(error)
    println(bots)
}

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)