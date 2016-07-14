//
//  ZZYPlaceholderTextView.m
//  VTEAM
//
//  Created by admin on 16/7/12.
//  Copyright © 2016年 断剑. All rights reserved.
//

#import "ZZYPlaceholderTextView.h"

@interface ZZYPlaceholderTextView()

@property (nonatomic, weak) UILabel * placeholderLabel;

@end

@implementation ZZYPlaceholderTextView

- (void)awakeFromNib
{
    [self setUp];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self setUp];
    }
    return self;
    
}

- (void)setUp
{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(textChange:) name:UITextViewTextDidChangeNotification object:self];
    CGFloat left = (self.leftMargin)?self.leftMargin:5;
    CGFloat top = (self.topMargin)?self.topMargin:5;
    CGFloat width = CGRectGetWidth(self.frame) - 2 * self.leftMargin;
    CGFloat height = (self.placeHeight)?self.placeHeight:21;
    UILabel * placeholderLabel = [[UILabel alloc]initWithFrame:CGRectMake(left, top, width,height)];
    placeholderLabel.textColor = (self.placeholderColor)?self.placeholderColor:[UIColor lightGrayColor];
    placeholderLabel.font = (self.placeholderFont)?self.placeholderFont:self.font;
    placeholderLabel.text = self.placeholder;
    [self addSubview:placeholderLabel];
    self.placeholderLabel = placeholderLabel;
}

- (void)textChange:(NSNotification *)nofi
{
    if (self.placeholder.length == 0 || [self.placeholder isEqualToString:@""]) {
        self.placeholderLabel.hidden = YES;
    }
    
    if (self.text.length > 0) {
        self.placeholderLabel.hidden = YES;
    }
    else
    {
        self.placeholderLabel.hidden = NO;
    }
    
}

- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    
    if (placeholder.length == 0 || [self.placeholder isEqualToString:@""]) {
        self.placeholderLabel.hidden = YES;
    }
    else
    {
        self.placeholderLabel.text = placeholder;
        self.placeholderLabel.hidden = NO;
    }
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}


@end
