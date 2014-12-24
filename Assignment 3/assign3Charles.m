// Assignment 3
// Charles Shinaver

#import <Foundation/Foundation.h>

void partOne();
void partTwoSameElement();
void partTwoSameSuffix();
void partThree();
void partFour();
NSString * partFive();
void partSix();
void partSeven();

int main ()
{
    partOne();
    partTwoSameElement();
    partTwoSameSuffix();
    partThree();
    partFour();
    NSLog(@"%@", partFive());
    partSix();
    partSeven();

}

void partOne()
{
    NSLog(@"Part One");
    NSString *one = @"miv";
    NSString *two = @"reverof";
    NSString *three = @"si";
    NSString *four = @"efil";
    NSArray *words = @[one, two, three, four];

    for (NSString *word in words)
    {
        for (int i = 0; i < word.length; i++)
        {
            printf("%C", [word characterAtIndex:(word.length - 1 - i)]);
        }
        printf("\n");
    }
}

void partTwoSameElement()
{
    NSLog(@"Part Two");
    NSArray *videos = @[@"middleSchoolJoe.mp4", @"babyjoe.mp4", @"babyjoe.mp4"];

    // All videos must check all other videos
    for (int root = 0; root < videos.count; root++)
    {
        for (int subsequent = root + 1; subsequent < videos.count; subsequent++)
        {
            if ([videos[root] isEqualToString:videos[subsequent]])
            {
                NSLog(@"%@ at index %i is equivalent to %@ at index %i", videos[root], root, videos[subsequent], subsequent);
            }
        }
    }
}

void partTwoSameSuffix()
{
    NSArray *videos = @[@"middleSchoolJoe.mp4", @"babyjoe.mp4", @"babyjoe.mp4"];
    NSString *suffix;
    int suffixIndex;

    // All videos must check all other videos
    for (int root = 0; root < videos.count; root++)
    {
        for (int subsequent = root + 1; subsequent < videos.count; subsequent++)
        {
            suffixIndex = [videos[root] rangeOfString:@"."].location;
            suffix = [videos[root] substringFromIndex:suffixIndex];

            if ([videos[subsequent] hasSuffix:suffix])
            {
                NSLog(@"%@ at index %i has the same suffix %@ as %@ at index %i", videos[root], root, suffix, videos[subsequent], subsequent);
            }
        }
    }
}

void partThree()
{ 
    NSLog(@"Part Three");
    NSString *one = @"Fancy";
    NSString *two = @"Feast";

    NSString *combined = [one stringByAppendingFormat:@" %@", two];

    NSLog(@"%@", combined);
}

void partFour()
{
    NSLog(@"Part Four");
    NSString *str = @"He was number one";
    NSString *searchStr = @"number ";

    NSString *newStr = [str stringByReplacingOccurrencesOfString:searchStr withString:@""];

    NSLog(@"%@", newStr);

}

NSString *  partFive()
{
    NSLog(@"Part Five");
    NSString *battleCry = @"LEEEEEROYYYYYYYY JENKINSSSSSSS";

    NSRange jRange = [battleCry rangeOfString:@"J"];
    return [battleCry substringFromIndex:jRange.location];
}

void partSix()
{
    NSLog(@"Part Six");
    NSString *happy = @"Happy";
    NSString *feet = @"Feet";
    NSString *newStr = [happy stringByAppendingString:feet];
    NSLog(@"%@", newStr);
}

void partSeven()
{
    NSLog(@"Part Seven");
    NSString *raw = @"lEeEtHaXxOoRrZz";
    raw = [raw uppercaseString];
    NSLog(@"%@", raw);
}

