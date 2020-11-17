//
//  SCETDefaultTableViewDelegate.m
//  SCEasyTableView_Example
//
//  Created by ty.Chen on 2020/11/17.
//  Copyright © 2020 Samueler. All rights reserved.
//

#import "SCETDefaultTableViewDelegate.h"

@implementation SCETDefaultTableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIAlertController *alertvc = [UIAlertController alertControllerWithTitle:nil message:[NSString stringWithFormat:@"didSelectRowAtIndexPath: 第%zd组，第%zd行", indexPath.section, indexPath.row] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertvc addAction:sureAction];
    
    UINavigationController *navc = nil;
    UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarVC = (UITabBarController *)rootViewController;
        UINavigationController *navigationController = (UINavigationController *)tabBarVC.selectedViewController;
        navc = navigationController;
    }else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        navc = (UINavigationController *)rootViewController;
    }else {
        navc = rootViewController.navigationController;
    }
    
    [navc.topViewController presentViewController:alertvc animated:YES completion:nil];
}

@end
