//
//  SCETDelegate.h
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import <UIKit/UIKit.h>
#import "SCETDataSource.h"

@interface SCETDelegate : NSObject <
UITableViewDelegate
>

@property (nonatomic, strong, readonly) SCETDataSource *dataSource;

- (instancetype)initWithDataSource:(SCETDataSource *)dataSource;

+ (instancetype)sc_delegateWithDataSource:(SCETDataSource *)dataSource;

@end


