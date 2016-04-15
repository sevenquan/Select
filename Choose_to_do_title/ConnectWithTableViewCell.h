//
//  ConnectWithTableViewCell.h
//  Choose_to_do_title
//
//  Created by seven on 16/4/13.
//  Copyright © 2016年 QC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConnectModel.h"

@protocol cellDelegate <NSObject>

-(void)addTager:(UIButton *)sender;

@end


@interface ConnectWithTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *questionTitle;
@property (weak, nonatomic) IBOutlet UILabel *answerOne;
@property (weak, nonatomic) IBOutlet UILabel *answerTwo;
@property (weak, nonatomic) IBOutlet UILabel *answerThree;
@property (weak, nonatomic) IBOutlet UILabel *answerFour;

@property(nonatomic,strong)ConnectModel *model;

@property (weak, nonatomic) IBOutlet UILabel *numberLabel;

@property (weak, nonatomic) IBOutlet UIButton *answerBtnOne;
@property (weak, nonatomic) IBOutlet UIButton *answerBtnTwo;
@property (weak, nonatomic) IBOutlet UIButton *answerBtnThree;
@property (weak, nonatomic) IBOutlet UIButton *answerBtnFour;

@property (weak, nonatomic) IBOutlet UIImageView *btnImage;


@property(nonatomic,weak)id<cellDelegate>celldelegate;

- (void)setMark:(NSString *)mark;

@end
