//
//  ConnectWithTableViewCell.m
//  Choose_to_do_title
//
//  Created by seven on 16/4/13.
//  Copyright © 2016年 QC. All rights reserved.
//

#import "ConnectWithTableViewCell.h"

@implementation ConnectWithTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(void)setModel:(ConnectModel *)model
{
    _model = model;
    
    self.questionTitle.text = self.model.title;
    self.answerOne.text = self.model.one;
    self.answerTwo.text = self.model.two;
    self.answerThree.text = self.model.three;
    self.answerFour.text = self.model.four;
  
}

- (CGSize)getTextSizeWithText:(NSString *)text
{
    CGRect rect = [text boundingRectWithSize:CGSizeMake(self.frame.size.width-52, 10000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:15]} context:nil];
    
    return rect.size;
}

-(void)layoutSubviews
{
    [super layoutSubviews];

  
}

- (IBAction)answerButton:(UIButton *)sender {
    
    self.btnImage.hidden = NO;
    self.btnImage.center = CGPointMake(self.btnImage.center.x, sender.center.y);
    
    if ([self.celldelegate respondsToSelector:@selector(addTager:)]) {
        [self.celldelegate addTager:sender];
    }
}

- (void)setMark:(NSString *)mark
{
    if ([mark isEqualToString:@"0"]) {
        self.btnImage.hidden = YES;
        
    }else if ([mark isEqualToString:@"1"])
    {
        self.btnImage.hidden = NO;
        self.btnImage.center = CGPointMake(self.btnImage.center.x, self.answerBtnOne.center.y);
    }else if ([mark isEqualToString:@"2"])
    {
        self.btnImage.hidden = NO;
        self.btnImage.center = CGPointMake(self.btnImage.center.x, self.answerBtnTwo.center.y);
    }else if ([mark isEqualToString:@"3"])
    {
        self.btnImage.hidden = NO;
        self.btnImage.center = CGPointMake(self.btnImage.center.x, self.answerBtnThree.center.y);
    }else
    {
        self.btnImage.hidden = NO;
        self.btnImage.center = CGPointMake(self.btnImage.center.x, self.answerBtnFour.center.y);
    }
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
