//
//  SCETSectionItem.h
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import <Foundation/Foundation.h>
#import "SCETRowItem.h"

@interface SCETSectionItem : NSObject

/// 描述每行cell的SCETRowItem实例数组
@property (nonatomic, strong) NSMutableArray<SCETRowItem *> *rowItems;

/// SCETSectionItem初始化方法
/// @param rowItems 描述每行cell的SCETRowItem实例数组
- (instancetype)initWithRowItems:(NSMutableArray<SCETRowItem *> *)rowItems;

/// SCETSectionItem初始化方法
/// @param rowItems 描述每行cell的SCETRowItem实例数组
+ (instancetype)sc_sectionItemWithRowItems:(NSMutableArray<SCETRowItem *> *)rowItems;

@end

