@import Foundation;
#import "WeDoBooksSDK-Swift.h"

@interface WDBFirebaseProviderLoader : NSObject
@end

@implementation WDBFirebaseProviderLoader

+ (void)load {
    WDB_touchFirebaseProvider();
}

@end
