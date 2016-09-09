//
//  HFAlertView.m
//  
//
//  Created by apple on 16/6/30.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "HFAlertView.h"

@implementation HFAlertView

#pragma mark -UIAlertViewDelegate

+ (HFAlertView *)singleClassWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle proceedButtonTitle:(NSString *)proceedButtonTitle{
    static HFAlertView *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[HFAlertView alloc] initWithTitle:title message:message cancelButtonTitle:cancelButtonTitle proceedButtonTitle:proceedButtonTitle];
    });
    manager.title = title;
    manager.message = message;
    return manager;
}

- (id)initWithTitle:(NSString *)title message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
 proceedButtonTitle:(NSString *)proceedButtonTitle  {
    self = [self initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:proceedButtonTitle, nil];
    if (self) {
        
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.returnTextBlock != nil) {
        self.returnTextBlock(buttonIndex);
    }
}

- (void)returnText:(returnBlock)block{
    self.returnTextBlock = block;
}

@end
