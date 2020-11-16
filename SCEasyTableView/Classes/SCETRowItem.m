//
//  SCETRowItem.m
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import "SCETRowItem.h"

NSString *const kSCETRowItemCellClassStringDefaultValue = @"UITableViewCell";

@implementation SCETRowItem

- (instancetype)initWithRowData:(id)rowData {
    return [self initWithRowData:rowData cellClassString:kSCETRowItemCellClassStringDefaultValue];
}

- (instancetype)initWithRowData:(id)rowData cellClassString:(NSString *)cellClassString {
    if (self = [super init]) {
        _rowData = rowData;
        _cellClassString = cellClassString ?: kSCETRowItemCellClassStringDefaultValue;
    }
    return self;
}

+ (instancetype)rowItemWithRowData:(id)rowData {
    return [[self alloc] initWithRowData:rowData];
}

+ (instancetype)rowItemWithRowData:(id)rowData cellClassString:(NSString *)cellClassString {
    return [[self alloc] initWithRowData:rowData cellClassString:cellClassString];
}

#pragma mark - Getter

- (Class)cellClass {
    return NSClassFromString(self.cellClassString);
}

- (NSString *)reusableIdentifier {
    return self.cellClassString;
}

@end
