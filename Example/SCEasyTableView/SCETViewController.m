//
//  SCETViewController.m
//  SCEasyTableView
//
//  Created by Samueler on 11/16/2020.
//  Copyright (c) 2020 Samueler. All rights reserved.
//

#import "SCETViewController.h"
#import <SCETDataSourceCoordinator.h>
#import "SCETDefaultTableViewDelegate.h"

@interface SCETViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) SCETDataSourceCoordinator *dataSourceCoordinator;

@end

@implementation SCETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    [self assembleDataSource];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.tableView.frame = self.view.bounds;
}

#pragma mark - Private Functions

- (void)assembleDataSource {
    NSMutableArray<SCETSectionItem *> *sectionItems = [NSMutableArray array];
    
    for (NSInteger section = 0; section < 10; section++) {
        NSMutableArray<SCETRowItem *> *rowItems = [NSMutableArray array];
        for (NSInteger row = 0; row < 5; row++) {
            
            SCETRowItem *rowItem = [SCETRowItem rowItemWithRowData:[NSString stringWithFormat:@"第%zd组 第%zd行", section, row] cellClassString:@"SCETDefaultTableViewCell"];
            rowItem.rowHeight = 44;
            [rowItems addObject:rowItem];
        }
        
        SCETSectionItem *sectionItem = [SCETSectionItem sc_sectionItemWithRowItems:rowItems];
        [sectionItems addObject:sectionItem];
    }
    
    self.dataSourceCoordinator = [SCETDataSourceCoordinator dataSourceCoordinatorWithSectionItems:sectionItems dataSourceClass:nil delegateClass:[SCETDefaultTableViewDelegate class]];
    
    self.tableView.dataSource = self.dataSourceCoordinator.dataSource;
    self.tableView.delegate = self.dataSourceCoordinator.delegate;
    [self.tableView reloadData];
}

#pragma mark - Lazy Load

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _tableView;
}

@end
