//
//  main.m
//  fsg-odd
//  Objective: Write an objective-c class that prompts the user for an integer value and then sums the odd digits that make up the number. If the input is 256778, the sum would be 19 (5 + 7 + 7).
//  Created by Felipe SG on 2021-02-05.
//  Copyright © 2021 ca.nscc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SumOdd: NSObject
-(void) sumTheOdds: (int) m;

@end

@implementation SumOdd {
    int value;
    int originalValue;
}
//getters and setters value
-(int) getValue
{
    return value;
}
-(void) setValue: (float) n
{
    value = n;
}
//getters and setters originalValue
-(int) getOriginalValue
{
    return originalValue;
}
-(void) setOriginalValue: (float) n
{
    originalValue = n;
}

//Calculate the ODD sum
-(void) sumTheOdds: (int) m
{
    int digit = 0;
    int tempDigit = 0;
    int tempValue = 0;
    [self setOriginalValue: m];
    digit = m;
    while ( digit > 0)
    {
        tempDigit = digit % 10;
        if (tempDigit > 0)
        {
            if (tempDigit % 2 > 0)
            {
                tempValue = tempDigit + tempValue;
            }
        }
        digit = digit/10;
    }
    [self setValue:tempValue];
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int userInput2;
        SumOdd *mySum = [[SumOdd alloc] init];
        NSLog(@"Please type a number: ");
        scanf("%d", &userInput2);
        fflush(stdin);
        [mySum sumTheOdds: userInput2];
        NSLog(@"The sum of odds from the number %i is: %i ", [mySum getOriginalValue], [mySum getValue]);
    }
    return 0;
}
