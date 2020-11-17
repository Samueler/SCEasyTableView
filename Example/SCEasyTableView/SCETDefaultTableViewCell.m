//
//  SCETDefaultTableViewCell.m
//  SCEasyTableView_Example
//
//  Created by ty.Chen on 2020/11/17.
//  Copyright © 2020 Samueler. All rights reserved.
//

#import "SCETDefaultTableViewCell.h"

@implementation SCETDefaultTableViewCell

#pragma mark - SCEasyTableViewProtocol

- (void)setupCellWithRowData:(NSString *)rowData {
    self.textLabel.text = rowData;
}

@end
