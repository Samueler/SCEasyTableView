//
//  SCETDataSource.h
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import <UIKit/UIKit.h>
#import "SCETSectionItem.h"

@interface SCETDataSource : NSObject <
UITableViewDataSource
>

@property (nonatomic, strong) NSMutableArray<SCETSectionItem *> *sectionItems;

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems;

+ (instancetype)sc_dataSourceWithSectionItem:(NSMutableArray<SCETSectionItem *> *)sectionItems;

@end


