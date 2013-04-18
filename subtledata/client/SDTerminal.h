#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTerminal : NIKSwaggerObject

@property(nonatomic) NSString* revenue_center_name;
@property(nonatomic) NSNumber* default_device;
@property(nonatomic) NSNumber* terminal_id;
@property(nonatomic) NSNumber* revenue_center_id;
@property(nonatomic) NSString* ip_address;
@property(nonatomic) NSString* name;
- (id) revenue_center_name: (NSString*) revenue_center_name
     default_device: (NSNumber*) default_device
     terminal_id: (NSNumber*) terminal_id
     revenue_center_id: (NSNumber*) revenue_center_id
     ip_address: (NSString*) ip_address
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

