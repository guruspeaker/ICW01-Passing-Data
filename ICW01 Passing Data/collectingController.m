//
//  ViewController.m
//  ICW01 Passing Data
//
//  Created by PAUL CHRISTIAN on 10/25/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import "collectingController.h"
#import "reportingController.h"

@interface collectingController ()
@property (weak, nonatomic) IBOutlet UITextField *txtFname;
@property (weak, nonatomic) IBOutlet UITextField *txtLname;
@property (weak, nonatomic) IBOutlet UITextField *txtHeightFeet;
@property (weak, nonatomic) IBOutlet UITextField *txtHeightInches;
@property (weak, nonatomic) IBOutlet UIButton *btnConvert;

@end

@implementation collectingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    reportingController* destination = [segue destinationViewController];
    NSString* collectedFullName;
    collectedFullName = [NSString stringWithFormat:@"%@ %@", _txtFname.text, _txtLname.text];
    
    destination.fullname = collectedFullName;
    destination.heightInInches = [_txtHeightFeet.text intValue]*12+[_txtHeightInches.text intValue];
    
    
    
}

-(IBAction)returnFromReportingController:(UIStoryboardSegue *)unwindSegue
{
   
}@end
