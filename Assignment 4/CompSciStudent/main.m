#import <Foundation/Foundation.h>
#import "CompSciStudent.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        CompSciStudent *Charles = [[CompSciStudent alloc] init];
        Charles.favoriteTextEditor = @"nano";
        Charles.age = 2;
        Charles.sexinessLevel = 9.34;
        Charles.googleFuLevel = 900.4;
        
        CompSciStudent *Mary = [[CompSciStudent alloc] init];
        Mary.favoriteTextEditor = @"vim";
        Mary.age = 21;
        Mary.sexinessLevel = 9000001.999;
        Mary.googleFuLevel = 99.8;
        
        NSString *winnersEditor = [Mary compareSexinessLevel:Charles];
        NSLog(@"%@", winnersEditor);
        
    }
    return 0;
}

