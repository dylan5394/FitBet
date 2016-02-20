//
//  NewsFeedTableViewController.m
//  FitBet
//
//  Created by Dylan Kyle Davis on 1/20/16.
//  Copyright © 2016 Dylan Davis. All rights reserved.
//

#import "BetsModel.h"
#import "NewBetViewController.h"
#import "NewsFeedTableViewController.h"

@interface NewsFeedTableViewController ()

@property (strong, nonatomic) BetsModel * model;

@end

@implementation NewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    _model = [BetsModel sharedModel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"bet" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    NewBetViewController * newBetVC = [segue destinationViewController];
    
    newBetVC.completionHandler = ^(NSString * participants,
                                   NSDate * time,
                                   float latitude,
                                   float longitude) {
        
        //JUST SO IT DOESNT CRASH RIGHT NOW
        if(false) {
            NSDictionary * newBet = [[NSDictionary alloc] initWithObjects:@[participants,time, @[[NSNumber numberWithFloat:latitude],[NSNumber numberWithFloat:longitude]]] forKeys:@[kParticipantsKey,kDateKey,kLocationKey]];
        
            [self.model addBet:newBet];
        }
        [self dismissViewControllerAnimated:YES completion:nil];
    };
    
}

@end
