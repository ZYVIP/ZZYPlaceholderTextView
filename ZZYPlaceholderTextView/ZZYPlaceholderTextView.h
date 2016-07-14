//
//  ZZYPlaceholderTextView.h
//  VTEAM
//
//  Created by admin on 16/7/12.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZZYPlaceholderTextView : UITextView

@property (nonatomic, copy) NSString * placeholder;
@property (nonatomic, strong) UIColor * placeholderColor;
@property (nonatomic, strong) UIFont * placeholderFont;


@property (nonatomic, assign) CGFloat leftMargin;
@property (nonatomic, assign) CGFloat topMargin;
@property (nonatomic, assign) CGFloat placeHeight;

@end
