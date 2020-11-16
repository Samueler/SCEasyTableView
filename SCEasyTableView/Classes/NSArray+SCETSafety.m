//
//  NSArray+SCETSafety.m
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import "NSArray+SCETSafety.h"

@implementation NSArray (SCETSafety)

- (id)sc_safetyObjectAtIndex:(NSUInteger)index {
    if (index < 0 || index >= self.count) {
        NSString *errorTip = [NSString stringWithFormat:@"Array out of bounds! index: %zd, count: %zd", index, self.count];
        NSAssert(NO, errorTip);
        return nil;
    }
    
    return [self objectAtIndex:index];
}

@end
