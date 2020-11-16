//
//  SCETDataSource.m
//  SCEazyTableView
//
//  Created by ty.Chen on 2020/11/13.
//

#import "SCETDataSource.h"
#import "NSArray+SCETSafety.h"

extern NSString *const kSCETRowItemCellClassStringDefaultValue;

@implementation SCETDataSource

- (instancetype)initWithSectionItems:(NSMutableArray<SCETSectionItem *> *)sectionItems {
    if (self = [super init]) {
        _sectionItems = sectionItems;
    }
    return self;
}

+ (instancetype)sc_dataSourceWithSectionItem:(NSMutableArray<SCETSectionItem *> *)sectionItems {
    return [[self alloc] initWithSectionItems:sectionItems];
}

#pragma mark - Private Functions

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowWithCellClass:(Class)cellClass reusableIdentifier:(NSString *)reusableIdentifier {
    if (!cellClass) {
        NSAssert(NO, @"The parameter of cellClass is nil!");
        return [self tableView:tableView cellForRowWithCellClass:[UITableViewCell class] reusableIdentifier:kSCETRowItemCellClassStringDefaultValue];
    }
    
    if (!reusableIdentifier) {
        reusableIdentifier = NSStringFromClass(cellClass);
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusableIdentifier];
    
    if (!cell) {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusableIdentifier];
    }
    
    if (!cell) {
        NSAssert(NO, @"Init cell fail,please find reasons!");
        return [self tableView:tableView cellForRowWithCellClass:[UITableViewCell class] reusableIdentifier:kSCETRowItemCellClassStringDefaultValue];
    }
    
    return cell;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sectionItems.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SCETSectionItem *sectionItem = [self.sectionItems sc_safetyObjectAtIndex:section];
    if (!sectionItem) {
        return 0;
    }
    
    return sectionItem.rowItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SCETSectionItem *sectionItem = [self.sectionItems sc_safetyObjectAtIndex:indexPath.section];
    if (!sectionItem) {
        return [self tableView:tableView cellForRowWithCellClass:[UITableViewCell class] reusableIdentifier:kSCETRowItemCellClassStringDefaultValue];
    }
    
    SCETRowItem *rowItem = [sectionItem.rowItems sc_safetyObjectAtIndex:indexPath.row];
    if (!rowItem) {
        return [self tableView:tableView cellForRowWithCellClass:[UITableViewCell class] reusableIdentifier:kSCETRowItemCellClassStringDefaultValue];
    }
    
    return [self tableView:tableView cellForRowWithCellClass:rowItem.cellClass reusableIdentifier:rowItem.reusableIdentifier];
}


@end
