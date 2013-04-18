#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"

@interface SDTenderType : NIKSwaggerObject

@property(nonatomic) NSNumber* tender_type_id;
@property(nonatomic) NSNumber* identifier;
@property(nonatomic) NSString* name;
- (id) tender_type_id: (NSNumber*) tender_type_id
     identifier: (NSNumber*) identifier
     name: (NSString*) name;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

