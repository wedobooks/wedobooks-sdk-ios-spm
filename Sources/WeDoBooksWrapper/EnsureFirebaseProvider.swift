import Foundation
internal import FirebaseProvider

// Touching FirebaseAdapterFactory here to make sure it's loaded
// to Objective C runtime which WeDoBooksFacade.shared.setup(...) uses.
@objc internal func WDB_touchFirebaseProvider() {
    // Referencing the type should be enough to ensure it’s in the image / Obj-C runtime.
    _ = FirebaseAdapterFactory.self
}
