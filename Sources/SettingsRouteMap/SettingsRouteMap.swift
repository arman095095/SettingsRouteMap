
import Module

public protocol SettingsRouteMap: AnyObject {
    func rootModule() -> SettingsModule
}

public protocol SettingsModuleOutput: AnyObject {
    func openUnauthorizedZone()
}

public protocol SettingsModuleInput: AnyObject {
    
}

public typealias SettingsModule = Module<SettingsModuleInput, SettingsModuleOutput>
