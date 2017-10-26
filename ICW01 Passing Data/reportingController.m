//
//  reportingController.m
//  ICW01 Passing Data
//
//  Created by PAUL CHRISTIAN on 10/25/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import "reportingController.h"

@interface reportingController ()
@property (weak, nonatomic) IBOutlet UILabel *lblReportMessage;
@property (weak, nonatomic) IBOutlet UILabel *lblReportConvert;

@end

@implementation reportingController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    int feet = _heightInInches / 12;
    int inches = _heightInInches % 12;
    double meters = _heightInInches * 0.0254;
    _lblReportMessage.text = [NSString stringWithFormat:@"Hello %@", _fullname];
    _lblReportConvert.text = [NSString stringWithFormat:@"Your height of %i’ %i” is %.02f meters",feet,inches,meters];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
