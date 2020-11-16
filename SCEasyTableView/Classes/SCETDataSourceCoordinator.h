//
//  SCETDataSourceCoordinator.h
//  SCEasyTableView
//
//  Created by ty.Chen on 2020/11/16.
//

#import <Foundation/Foundation.h>
#import "SCETDataSource.h"
#import "SCETDelegate.h"

@interface SCETDataSourceCoordinator : NSObject

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

+ (instancetype)dataSourceCoordinatorWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems;

+ (instancetype)dataSourceCoordinatorWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                     dataSourceClass:(Class)dataSourceClass;

+ (instancetype)dataSourceCoordinatorWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                       delegateClass:(Class)delegateClass;

+ (instancetype)dataSourceCoordinatorWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems
                              dataSourceClass:(Class)dataSourceClass
                                delegateClass:(Class)delegateClass;

@end
