//
//  ViewController.m
//  DragonFashion
//
//  Created by Kyle Magnesen on 1/13/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"
#import "DragonViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Dragon *smaug  = [[Dragon alloc] initWithFullname:@"Smaug the Magnificent"];
    Dragon *puff   = [[Dragon alloc] initWithFullname:@"Puff the Magic Dragon" signatureClothingItem:@"Bowtie"];
    Dragon *albi   = [[Dragon alloc] initWithFullname:@"Albi the Racist Dragon" signatureClothingItem:@"Top Hat"];
    Dragon *drogon = [[Dragon alloc] initWithFullname:@"Drogon the Destroyer" signatureClothingItem:@"Two Chainz"];

    self.dragons = [NSArray arrayWithObjects:smaug, puff, albi, drogon, nil];

    for (Dragon *dragon in self.dragons) {
        NSLog(@"%@",dragon);
    }
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];
    
    cell.textLabel.text = dragon.fullname;
    cell.detailTextLabel.text = dragon.signatureClothingItem;

    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSIndexPath *selectedIndexPath = self.tableView.indexPathForSelectedRow;
    DragonViewController *vc = segue.destinationViewController;
    Dragon *dragonTapped = [self.dragons objectAtIndex:selectedIndexPath.row];
    vc.dragon = dragonTapped;
}

@end
