//
//  NewBetViewController.m
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/20/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

@import GoogleMaps;
#import "NewBetViewController.h"

@interface NewBetViewController () <GMSMapViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet GMSMapView *mapView;
@property (weak, nonatomic) IBOutlet UIView *optionsView;
@property (weak, nonatomic) IBOutlet UITextField *participantsField;

@end

@implementation NewBetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Controls whether the My Location dot and accuracy circle is enabled
    self.mapView.myLocationEnabled = YES;
    //Controls the type of map tiles that should be displayed.
    self.mapView.mapType = kGMSTypeNormal;
    //Shows the compass button on the map
    self.mapView.settings.compassButton = YES;
    //Shows the my location button on the map
    self.mapView.settings.myLocationButton = YES;
    //Sets the view controller to be the GMSMapView delegate
    self.mapView.delegate = self;
    
    self.participantsField.delegate = self;
    
    CALayer *border = [CALayer layer];
    CGFloat borderWidth = 1;
    border.borderColor = [UIColor groupTableViewBackgroundColor].CGColor;
    border.frame = CGRectMake(0, self.participantsField.frame.size.height - borderWidth, self.view.frame.size.width, self.participantsField.frame.size.height);
    border.borderWidth = borderWidth;
    [self.participantsField.layer addSublayer:border];
    self.participantsField.layer.masksToBounds = YES;
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, self.participantsField.frame.size.height)];
    leftView.backgroundColor = self.participantsField.backgroundColor;
    self.participantsField.leftView = leftView;
    self.participantsField.leftViewMode = UITextFieldViewModeAlways;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelPressed:(id)sender {
    
    //also need to clear the fields
    if(self.completionHandler) {
        self.completionHandler(nil, nil, 0, 0);
    }
}

-(void)textFieldDidBeginEditing:(UITextField *)textField {
    
    UIViewController * contactsView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"contactsVC"];

    [self presentViewController:contactsView animated:NO completion:nil];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
