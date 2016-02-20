//
//  IndividualBetViewController.m
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/20/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

@import GoogleMaps;
#import "IndividualBetViewController.h"

@interface IndividualBetViewController () <GMSMapViewDelegate>

@property (weak, nonatomic) IBOutlet GMSMapView *mapView;

@end

@implementation IndividualBetViewController

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
