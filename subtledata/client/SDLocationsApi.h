#import <Foundation/Foundation.h>
#import "NIKApiInvoker.h"
#import "SDCategory.h"
#import "SDConnectStatus.h"
#import "SDPaymentStatus.h"
#import "SDUser.h"
#import "SDItemToAdd.h"
#import "SDOrderResults.h"
#import "SDNewExternalPayment.h"
#import "SDLocation.h"
#import "SDNewTicket.h"
#import "SDDiscountInfo.h"
#import "SDStatus.h"
#import "SDExternalPaymentStatus.h"
#import "SDNewPayment.h"
#import "SDEmployee.h"
#import "SDTable.h"
#import "SDTicketStatus.h"
#import "SDTicket.h"
#import "SDNewConnection.h"


@interface SDLocationsApi: NSObject {

@private
    NSOperationQueue *_queue;
    NIKApiInvoker * _api;
}
@property(nonatomic, readonly) NSOperationQueue* queue;
@property(nonatomic, readonly) NIKApiInvoker* api;

-(void) addHeader:(NSString*)value forKey:(NSString*)key;

/**

 Get all of your locations
 
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getAllLocationsWithCompletionBlock :(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get locations near a GPS coordinate
 
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 @param latitude Latitude floating point value of search coordinate
 @param longitude Longitude floating point value of search coordinate
 @param radius Distance (in miles) to search near coordinate
 */
-(void) getLocationsNearWithCompletionBlock :(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        latitude:(NSNumber*) latitude 
        longitude:(NSNumber*) longitude 
        radius:(NSNumber*) radius 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get a location by ID
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getLocationWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(SDLocation* output, NSError* error))completionBlock;

/**

 Get a location's Menu
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 @param use_cache Utilize Cached Data
 */
-(void) getLocationMenuWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        use_cache:(NSNumber*) use_cache 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get a list of employees by location ID
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 @param manager_id 
 @param revenue_center_id 
 */
-(void) getLocationEmployeesWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        manager_id:(NSNumber*) manager_id 
        revenue_center_id:(NSNumber*) revenue_center_id 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get a list of tables by location ID
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 */
-(void) getTableListWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Get a list of tickets by location ID
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 */
-(void) getTicketsWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Create a ticket
 
 @param location_id Subtledata Location ID
 @param api_key Subtledata API Key
 @param ticket_type Order Type
 @param body New Ticket Object
 */
-(void) createTicketWithCompletionBlock :(NSNumber*) location_id 
        api_key:(NSString*) api_key 
        ticket_type:(NSString*) ticket_type 
        body:(SDNewTicket*) body 
        completionHandler: (void (^)(SDTicketStatus* output, NSError* error))completionBlock;

/**

 Get a table by location ID and unique ID
 
 @param location_id Subtledata Location ID
 @param table_id Subtledata Location ID
 @param api_key Subtledata API Key
 */
-(void) getTableWithCompletionBlock :(NSNumber*) location_id 
        table_id:(NSNumber*) table_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(SDTable* output, NSError* error))completionBlock;

/**

 Get a ticket by ID
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param user_id 
 */
-(void) getTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        user_id:(NSNumber*) user_id 
        completionHandler: (void (^)(SDTicket* output, NSError* error))completionBlock;

/**

 Void a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param user_id 
 */
-(void) voidTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        user_id:(NSNumber*) user_id 
        completionHandler: (void (^)(SDStatus* output, NSError* error))completionBlock;

/**

 Get a ticket by POS ID
 
 @param location_id SubtleData Location ID
 @param pos_ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param user_id 
 */
-(void) getTicketWithPOS_IDWithCompletionBlock :(NSNumber*) location_id 
        pos_ticket_id:(NSNumber*) pos_ticket_id 
        api_key:(NSString*) api_key 
        user_id:(NSNumber*) user_id 
        completionHandler: (void (^)(SDTicket* output, NSError* error))completionBlock;

/**

 Order the currently staged items
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param user_id SubtleData Location ID
 @param api_key Subtledata API Key
 */
-(void) submitOrderWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        user_id:(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(SDOrderResults* output, NSError* error))completionBlock;

/**

 Add items to currently staged order on a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param user_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body The Item object to Add
 */
-(void) addItemsToOrderWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        user_id:(NSNumber*) user_id 
        api_key:(NSString*) api_key 
        body:(SDItemToAdd*) body 
        completionHandler: (void (^)(SDStatus* output, NSError* error))completionBlock;

/**

 Get users connected to a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 */
-(void) getUsersConnectedToTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        completionHandler: (void (^)(NSArray* output, NSError* error))completionBlock;

/**

 Connect a user to a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body Into used to connect the user
 */
-(void) connectUserToTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        body:(SDNewConnection*) body 
        completionHandler: (void (^)(SDConnectStatus* output, NSError* error))completionBlock;

/**

 Discount a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body Details regarding the discount
 */
-(void) discountTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        body:(SDDiscountInfo*) body 
        completionHandler: (void (^)(SDStatus* output, NSError* error))completionBlock;

/**

 Add a credit card payment to a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body Info used for payment
 */
-(void) addPaymentToTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        body:(SDNewPayment*) body 
        completionHandler: (void (^)(SDPaymentStatus* output, NSError* error))completionBlock;

/**

 Add an external payment to a ticket
 
 @param location_id SubtleData Location ID
 @param ticket_id SubtleData Location ID
 @param api_key Subtledata API Key
 @param body Info used for payment
 */
-(void) addExternalPaymentToTicketWithCompletionBlock :(NSNumber*) location_id 
        ticket_id:(NSNumber*) ticket_id 
        api_key:(NSString*) api_key 
        body:(SDNewExternalPayment*) body 
        completionHandler: (void (^)(SDExternalPaymentStatus* output, NSError* error))completionBlock;

@end
