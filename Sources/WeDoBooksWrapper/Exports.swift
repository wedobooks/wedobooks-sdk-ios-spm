// Re-export of public WeDoBooksSDK symbols and hiding of ColibrioReader
// NOTE: @_exported and @_implementationOnly are internal Swift attributes but widely used in SPM modules.
// If it becomes deprecated, replace with manual wrapper API.
@_exported import WeDoBooksSDK
@_implementationOnly import ColibrioReader
