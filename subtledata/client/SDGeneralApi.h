#import <Foundation/Foundation.h>
#import "NIKApiInvoker.h"
#import "SDCountry.h"
#import "SDState.h"


@interface SDGeneralApi: NSObject {

@private
    NSOperationQueue *_queue;
    NIKApiInvoker * _api;
}
@property(nonatomic, readonly) NSOperationQueue* queue;
@property(nonatomic, readonly) NIKApiInvoker* api;

-(void) addHeader:(NSString*)value forKey:(NSString*)key;

/**

 Get all countries
 
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getAllCountriesWithCompletionBlock :(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get all state identifiers
 
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getAllStatesWithCompletionBlock :(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

@end
