//
//  HFAlertView.h
//  
//
//  Created by apple on 16/6/30.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^returnBlock)(NSInteger showText);

@interface HFAlertView : UIAlertView
//声明block 属性
@property (nonatomic,strong)returnBlock returnTextBlock;
//声明 调用方法
- (void) returnText: (returnBlock)block;

- (id)initWithTitle:(NSString *)title message:(NSString *)message
  cancelButtonTitle:(NSString *)cancelButtonTitle
 proceedButtonTitle:(NSString *)proceedButtonTitle;

+ (HFAlertView *)singleClassWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle proceedButtonTitle:(NSString *)proceedButtonTitle;

@end
