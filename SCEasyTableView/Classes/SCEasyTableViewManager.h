//
//  SCEasyTableViewManager.h
//  SCEasyTableView
//
//  Created by ty.Chen on 2020/11/16.
//

#import <Foundation/Foundation.h>
#import "SCETDataSource.h"
#import "SCETDelegate.h"

@interface SCEasyTableViewManager : NSObject

@property (nonatomic, strong) SCETDataSource *dataSource;

@property (nonatomic, strong) SCETDelegate *delegate;

- (instancetype)init NS_UNAVAILABLE;

+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems;

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                     dataSourceClass:(Class)dataSourceClass;

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                       delegateClass:(Class)delegateClass;

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                     dataSourceClass:(Class)dataSourceClass
                       delegateClass:(Class)delegateClass;

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems;

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                     dataSourceClass:(Class)dataSourceClass;

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                       delegateClass:(Class)delegateClass;

+ (instancetype)easyTableViewWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                              dataSourceClass:(Class)dataSourceClass
                                delegateClass:(Class)delegateClass;

@end

