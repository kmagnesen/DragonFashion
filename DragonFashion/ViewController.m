//
//  ViewController.m
//  DragonFashion
//
//  Created by Kyle Magnesen on 1/13/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Dragon *smaug = [[Dragon alloc] initWithFullname:@"Smaug the Magnificent"];
    smaug.signatureClothingItem = @"Gold Cloak";
    Dragon *puff = [[Dragon alloc] initWithFullname:@"Puff the Magic Dragon"];
    puff.signatureClothingItem = @"Bowtie";
    Dragon *albi = [[Dragon alloc] initWithFullname:@"Albi the Racist Dragon"];
    albi.signatureClothingItem = @"Top Hat";
    Dragon *drogon = [[Dragon alloc] initWithFullname:@"Drogon the Destroyer"];
    drogon.signatureClothingItem = @"Two Chainz";

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

@end
