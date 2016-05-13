//
//  main.m
//  NmodM


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        NSString *line = @"1,5";
        
        NSArray *commaSeperatedComponants = [line componentsSeparatedByString:@","];
        NSInteger n = [[commaSeperatedComponants objectAtIndex:0] floatValue];;
        NSInteger m = [[commaSeperatedComponants objectAtIndex:1] floatValue];
        NSInteger remainder = 0;
        
//        NSLog(@"1 mod 5 = %d", 1 % 5);
//        NSLog(@"2 mod 3 = %d", 2 % 3);
        while (n >= 2 * m) {
            
            n = n - m;
//            NSLog(@"\nn: %ld\n\n", n);
        }

        if (n < m) {
            remainder = n;
        }
        else {
            remainder = n - m;
        }
        NSLog(@"\nremainder: %ld\n\n", remainder);
    }
    return 0;
}
