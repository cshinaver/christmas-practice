#import "CompSciStudent.h"

@implementation CompSciStudent

-(NSString *) compareSexinessLevel: (CompSciStudent *)student2
{
    if (self.sexinessLevel>student2.sexinessLevel)
    {
        return self.favoriteTextEditor;
    }
    
    if (self.sexinessLevel<student2.sexinessLevel)
    {
        return student2.favoriteTextEditor;
    }
    
    else
    {
        return @"tie";
    }
}

@end
