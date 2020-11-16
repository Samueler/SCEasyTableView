//
//  SCETSectionItem.m
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import "SCETSectionItem.h"

@implementation SCETSectionItem

- (instancetype)initWithRowItems:(NSMutableArray<SCETRowItem *> *)rowItems {
    if (self = [super init]) {
        _rowItems = rowItems;
    }
    return self;
}

+ (instancetype)sc_sectionItemWithRowItems:(NSMutableArray<SCETRowItem *> *)rowItems {
    return [[self alloc] initWithRowItems:rowItems];
}

@end
