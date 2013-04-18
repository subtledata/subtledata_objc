#import <Foundation/Foundation.h>
#import "NIKApiInvoker.h"
#import "SDUser.h"
#import "SDAuthResponse.h"
#import "SDCard.h"
#import "SDCardStatus.h"
#import "SDStatus.h"
#import "SDNewCard.h"
#import "SDNewUser.h"
#import "SDDeleteUserStatus.h"
#import "SDAuthUserRequest.h"


@interface SDUsersApi: NSObject {

@private
    NSOperationQueue *_queue;
    NIKApiInvoker * _api;
}
@property(nonatomic, readonly) NSOperationQueue* queue;
@property(nonatomic, readonly) NIKApiInvoker* api;

-(void) addHeader:(NSString*)value forKey:(NSString*)key;

/**

 Create a user
 
 @param api_key Subtledata API Key
 @param body New User Object
 */
-(void) createUserWithCompletionBlock :(NSString*) api_key 
        body:(SDNewUser*) body 
        completionHandler: (void (^)(SDUser* output, NSError* error))completionBlock;

/**

 Get a user by ID
 
 @param user_id Subtledata User ID
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getUserWithCompletionBlock :(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(SDUser* output, NSError* error))completionBlock;

/**

 Delete a user
 
 @param user_id Subtledata User ID
 @param api_key Subtledata API Key
 */
-(void) deleteUserWithCompletionBlock :(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(SDDeleteUserStatus* output, NSError* error))completionBlock;

/**

 Authenticate a user
 
 @param api_key Subtledata API Key
 @param body New User Authentication Request
 */
-(void) authUserWithCompletionBlock :(NSString*) api_key 
        body:(SDAuthUserRequest*) body 
        completionHandler: (void (^)(SDAuthResponse* output, NSError* error))completionBlock;

/**

 Search for a user by name
 
 @param user_name Subtledata User Name
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) searchUsersByNameWithCompletionBlock :(NSString*) user_name 
        api_key:(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get a list of stored cards for a user
 
 @param user_id SubtleData User ID
 @param api_key Subtledata API Key
 */
-(void) getUsersCardsWithCompletionBlock :(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Create a card for a user
 
 @param user_id SubtleData User ID
 @param api_key Subtledata API Key
 @param body New Card Object
 */
-(void) createCardForUserWithCompletionBlock :(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        body:(SDNewCard*) body 
        completionHandler: (void (^)(SDCardStatus* output, NSError* error))completionBlock;

/**

 Delete a user's credit card
 
 @param user_id SubtleData User ID
 @param card_id SubtleData User ID
 @param api_key Subtledata API Key
 */
-(void) deleteUserCreditCardWithCompletionBlock :(NSNumber*) user_id 
        card_id:(NSNumber*) card_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(SDStatus* output, NSError* error))completionBlock;

@end
