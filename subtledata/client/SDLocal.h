#import <Foundation/Foundation.h>
#import "NIKSwaggerObject.h"
#import "SDModifierList.h"

@interface SDLocal : NIKSwaggerObject

@property(nonatomic) NSString* description;
@property(nonatomic) NSNumber* category_id;
@property(nonatomic) NSString* name;
@property(nonatomic) NSArray* modifier_list;
- (id) description: (NSString*) description
     category_id: (NSNumber*) category_id
     name: (NSString*) name
     modifier_list: (NSArray*) modifier_list;

- (id) initWithValues: (NSDictionary*)dict;
- (NSDictionary*) asDictionary;


@end

