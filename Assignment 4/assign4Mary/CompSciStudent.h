#import <Foundation/Foundation.h>

@interface CompSciStudent : NSObject

@property NSString *favoriteTextEditor;
@property int age;
@property double sexinessLevel;
@property double googleFuLevel;

-(NSString *) compareSexinessLevel: (CompSciStudent *)student2;

@end
