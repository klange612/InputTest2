//
//  InputTest2ViewController.m
//  InputTest2
//
//  Created by Kurt Lange on 4/4/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "InputTest2ViewController.h"

@interface InputTest2ViewController ()

@end

@implementation InputTest2ViewController
@synthesize mainLabel;
@synthesize pickerView;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [data count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [data objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)thePickerView  didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    mainLabel.text = [NSString stringWithFormat:@"%@", [data objectAtIndex:row]];
    NSLog(@"Value: %@. Index of selected color: %i", [data objectAtIndex:row], row);
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    data=[[NSMutableArray alloc] init];
    for (int i=0; i<100; i++) {
        [data addObject:[NSString stringWithFormat:@"%d", i]];
    }
    self.pickerView.frame = CGRectMake(0, 219, 400, 216);
//    UIPickerView  *pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0.f, 0.f, 200.f, 116.f)];
//    [scrollView addSubview:pickerView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
