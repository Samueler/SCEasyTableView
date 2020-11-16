//
//  SCEasyTableViewManager.m
//  SCEasyTableView
//
//  Created by ty.Chen on 2020/11/16.
//

#import "SCEasyTableViewManager.h"

@implementation SCEasyTableViewManager

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems {
    return [self initWithSectionItems:sectionItems dataSourceClass:nil delegateClass:nil];
}

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems dataSourceClass:(Class)dataSourceClass {
    return [self initWithSectionItems:sectionItems dataSourceClass:dataSourceClass delegateClass:nil];
}

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems delegateClass:(Class)delegateClass {
    return [self initWithSectionItems:sectionItems dataSourceClass:nil delegateClass:delegateClass];
}

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                     dataSourceClass:(Class)dataSourceClass
                       delegateClass:(Class)delegateClass {
    if (self = [super init]) {
        if (!dataSourceClass) {
            dataSourceClass = [SCETDataSource class];
        }
        
        if (!delegateClass) {
            delegateClass = [SCETDelegate class];
        }
        
        self.dataSource = [SCETDataSource sc_dataSourceWithSectionItem:sectionItems];
        self.delegate = [SCETDelegate sc_delegateWithDataSource:self.dataSource];
    }
    return self;
}

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems {
    return [self easyTableViewWithSectionItems:sectionItems dataSourceClass:nil delegateClass:nil];
}

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems dataSourceClass:(Class)dataSourceClass {
    return [self easyTableViewWithSectionItems:sectionItems dataSourceClass:dataSourceClass delegateClass:nil];
}

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems delegateClass:(Class)delegateClass {
    return [self easyTableViewWithSectionItems:sectionItems dataSourceClass:nil delegateClass:delegateClass];
}

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                              dataSourceClass:(Class)dataSourceClass
                                delegateClass:(Class)delegateClass {
    return [[self alloc] initWithSectionItems:sectionItems dataSourceClass:dataSourceClass delegateClass:delegateClass];
}

@end
