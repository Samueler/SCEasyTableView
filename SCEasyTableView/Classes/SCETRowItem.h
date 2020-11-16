//
//  SCETRowItem.h
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import <Foundation/Foundation.h>

@interface SCETRowItem : NSObject

/// cell的数据
@property (nonatomic, strong) id rowData;

/// cell的高度
@property (nonatomic, assign) CGFloat rowHeight;

/// cell类的名称（默认为 `UITableViewCell`）
@property (nonatomic, copy) NSString *cellClassString;

/// cell的Class
@property (nonatomic, strong, readonly) Class cellClass;

/// cell重用标识,等于`cellClassString`的值
@property (nonatomic, copy, readonly) NSString *reusableIdentifier;

/// SCETRowItem初始化方法
/// @param rowData cell的数据
- (instancetype)initWithRowData:(id)rowData;

/// SCETRowItem初始化方法
/// @param rowData cell的数据
/// @param cellClassString cell类的名称
- (instancetype)initWithRowData:(id)rowData cellClassString:(NSString *)cellClassString;

/// SCETRowItem初始化方法
/// @param rowData cell的数据
+ (instancetype)rowItemWithRowData:(id)rowData;

/// SCETRowItem初始化方法
/// @param rowData cell的数据
/// @param cellClassString cell类的名称
+ (instancetype)rowItemWithRowData:(id)rowData cellClassString:(NSString *)cellClassString;

@end
