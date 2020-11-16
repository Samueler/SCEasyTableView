//
//  SCETDelegate.m
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import "SCETDelegate.h"
#import "NSArray+SCETSafety.h"
#import "SCEasyTableViewProtocol.h"

@implementation SCETDelegate

- (instancetype)initWithDataSource:(SCETDataSource *)dataSource {
    if (self = [super init]) {
        self->_dataSource = dataSource;
    }
    return self;
}

+ (instancetype)sc_delegateWithDataSource:(SCETDataSource *)dataSource {
    return [[self alloc] initWithDataSource:dataSource];
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    SCETSectionItem *sectionItem = [self.dataSource.sectionItems sc_safetyObjectAtIndex:indexPath.section];
    if (!sectionItem) {
        return 0;
    }
    
    SCETRowItem *rowItem = [sectionItem.rowItems sc_safetyObjectAtIndex:indexPath.row];
    if (!rowItem) {
        return 0;
    }
    
    return rowItem.rowHeight;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    SCETSectionItem *sectionItem = [self.dataSource.sectionItems sc_safetyObjectAtIndex:indexPath.section];
    if (!sectionItem) {
        return;
    }
    
    SCETRowItem *rowItem = [sectionItem.rowItems sc_safetyObjectAtIndex:indexPath.row];
    if (!rowItem) {
        return;
    }
    
    if ([cell conformsToProtocol:@protocol(SCEasyTableViewProtocol)] && [cell respondsToSelector:@selector(setupCellWithRowData:)]) {
        UITableViewCell<SCEasyTableViewProtocol> *protocolCell = (UITableViewCell<SCEasyTableViewProtocol> *)cell;
        [protocolCell setupCellWithRowData:rowItem.rowData];
    }
}

@end
