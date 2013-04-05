//
//  InputTest2ViewController.h
//  InputTest2
//
//  Created by Kurt Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputTest2ViewController : UIViewController <UIPickerViewDelegate>;

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end

NSMutableArray *data;

