//
//  NSArray+SCETSafety.h
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import <Foundation/Foundation.h>

@interface NSArray (SCETSafety)

/// 获取对应下标的元素（数组越界时，返回值为nil）
/// @param index 元素下标
- (id)sc_safetyObjectAtIndex:(NSUInteger)index;

@end


