#import <Foundation/Foundation.h>

void printInReverse(NSString *);
void findSameElements(NSArray *);
void findSameSuffix(NSArray *);
void findStringNumber(NSString *);
void getJenkins(NSString *);

int main() {
    // Part 1
    NSString *first = @"miv";
    NSString *second = @"reverof";
    NSString *third = @"si";
    NSString *fourth = @"efil";
    printInReverse(first);
    printInReverse(second);
    printInReverse(third);
    printInReverse(fourth);
    printf("\n");

    //Part 2
    NSArray *arrayOfJoe = @[@"middleSchoolJoe.mp4", @"babyjoe.mp4", @"babyjoe.mp4"];
    findSameElements(arrayOfJoe);
    findSameSuffix(arrayOfJoe);

    //Part 3
    NSString *f1 = @"Fancy";
    NSString *f2 = @"Feast";
    NSMutableString *f3 = [NSMutableString stringWithString: f1];
    [f3 appendString: @" "], [f3 appendString: f2];
    NSLog(@"%@",f3);

    //Part 4
    NSString *one = @"He was number one";
    findStringNumber(one);

    //Part 5
    NSString *goingHam = @"LEEEEEROYYYYYYYY JENKINSSSSSSS";
    getJenkins(goingHam);

    //Part 6
    NSString *too = @"Happy";
    NSMutableString *cute = [NSMutableString stringWithString: too];
    [cute appendString: @"Feet"];
    NSLog(@"%@", cute);

    //Part 7
    NSString *us = @"lEeEtHaXxOoRrZz";
    us = [us uppercaseString];
    NSLog(@"%@",us);

}


void printInReverse(NSString *string) {
    for(int i = [string length] - 1; i >= 0; i--)
        printf("%c", (char) [string characterAtIndex:i]);
    printf(" ");
} 

void findSameElements(NSArray *array) {
    for(int i = 0; i < array.count - 1; i++) 
        if ([array[i] isEqualToString: array[i+1]]) 
            NSLog(@"Element %@ at index %i is the same as element %@ at index %i",array[i],i,array[i+1],i+1);
}

void findSameSuffix(NSArray *array) {
    NSString *suffix;
    int suffixIndex;
    for (int i = 0; i < array.count; i++) 
        for (int j = i+1; j < array.count; j++) {
            suffixIndex = [array[i] rangeOfString: @"."].location;
            suffix = [array[i] substringFromIndex:suffixIndex];
            if ([array[j] hasSuffix:suffix]) 
                NSLog(@"Element %@ at index %i has the same suffix %@ as element %@ at index %i",array[i],i,suffix,array[j],j);
       }
}

void findStringNumber(NSString *string) {
    NSLog(@"%@",string);
    NSRange indexRange = [string rangeOfString: @"number "];
    NSLog(@"The substring 'number' is found at index %lu",indexRange.location);

    NSMutableString *newString = [NSMutableString stringWithString: string];
    [newString replaceCharactersInRange: NSMakeRange(indexRange.location,indexRange.length) withString: @""];
    NSLog(@"%@", newString);
}

void getJenkins(NSString *string) {
    int index = [string rangeOfString: @"J"].location;
    NSString *ohMy = [string substringFromIndex: index];
    NSLog(@"%@", ohMy);
}




