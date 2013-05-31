#import <Foundation/Foundation.h>
#import "NIKApiInvoker.h"
#import "SDConcessionOrderResults.h"
#import "SDConcessionTicketDetails.h"


@interface SDConcessionsApi: NSObject {

@private
    NSOperationQueue *_queue;
    NIKApiInvoker * _api;
}
@property(nonatomic, readonly) NSOperationQueue* queue;
@property(nonatomic, readonly) NIKApiInvoker* api;

-(void) addHeader:(NSString*)value forKey:(NSString*)key;

/**

 Create a concession style order
 
 @param location_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body Concession Ticket Details
 */
-(void) createConcessionOrderWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        body:(SDConcessionTicketDetails*) body 
        completionHandler: (void (^)(SDConcessionOrderResults* output, NSError* error))completionBlock;

@end
