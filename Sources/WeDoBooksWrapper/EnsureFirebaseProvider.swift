import Foundation

// Touching FirebaseAdapterFactory here to make sure it's loaded
// to Objective C runtime which WeDoBooksFacade.shared.setup(...) uses.
_ = FirebaseAdapterFactory()