#import "NIKDate.h"
#import "SDItemImage.h"

@implementation SDItemImage

-(id)image_url: (NSString*) image_url
    image_type_id: (NSNumber*) image_type_id
{
  _image_url = image_url;
  _image_type_id = image_type_id;
  return self;
}

-(id) initWithValues:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        _image_url = dict[@"image_url"]; 
        _image_type_id = dict[@"image_type_id"]; 
        

    }
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(_image_url != nil) dict[@"image_url"] = _image_url ;
    if(_image_type_id != nil) dict[@"image_type_id"] = _image_type_id ;
    NSDictionary* output = [dict copy];
    return output;
}

@end

