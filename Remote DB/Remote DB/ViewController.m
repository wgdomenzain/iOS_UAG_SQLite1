//
//  ViewController.m
//  Remote DB
//
//  Created by Walter on 18/03/14.
//  Copyright (c) 2014 SmartPlace. All rights reserved.
//

#import "ViewController.h"

NSString        *str_DBPost;
NSURL        *str_DBURL;

@interface NSURLRequest (DummyInterface)
+ (void)connection:(NSURLConnection *)connection willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *str_Login = @"walter";
    NSString *str_Password = @"123";
    
    str_DBPost = [[NSString alloc] initWithFormat:@"login=%@&password=%@", str_Login, str_Password];
    
    str_DBURL = [NSURL URLWithString:@"http://prsacim.appspot.com/api1/login/"];

}

//?login=rogeliotoba&password=123

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonPressed:(id)sender
{
    NSLog(@"Button Pressed");
    [self loadDataWithOperation];
}
/**********************************************************************************************
 Fetch data from DB
 **********************************************************************************************/
//-------------------------------------------------------------------------------
//Read DB via POST method
- (void) loadData_PostMethod
{
    /* Operation Queue init (autorelease) */
    NSOperationQueue *queue = [NSOperationQueue new];
    
    /* Create our NSInvocationOperation to call loadDataWithOperation, passing in nil */
    NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self
                                                                            selector:@selector(loadDataWithOperation)
                                                                              object:nil];
    /* Add the operation to the queue */
    [queue addOperation:operation];
    //[operation release];
}

//-------------------------------------------------------------------------------
- (void) loadDataWithOperation
{
    //Operation for POST method
    

    NSString *responseData;
    @try
    {
        NSString *post = str_DBPost;
        NSLog(@"PostData: %@",post);
        
        NSURL *url = str_DBURL;
        NSLog(@"URL = %@", str_DBURL);
        
        NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
        
        NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
        
        NSLog(@"postLength: %@", postLength);
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        
        [request setURL:url];
        [request setHTTPMethod:@"POST"];
        [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
        [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
        [request setHTTPBody:postData];
        
        [NSURLRequest requestWithURL:url];
        
        NSError *error = [[NSError alloc] init];
        NSHTTPURLResponse *response = nil;
        NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        

        if ([response statusCode] >=200 && [response statusCode] <300)
        {
            responseData = [[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
            
            NSLog(@"Response ==> %@", responseData);
            
            /*json[int_localCurrentLeague] = [NSJSONSerialization
                                            JSONObjectWithData:urlData //1
                                            
                                            options:kNilOptions
                                            error:&error];
             */
        }
        else
        {
            if (error)
            {
                NSLog(@"Error: %@", error);
                NSLog(@"Conect Fail");
            }
        }
    }
    
    @catch (NSException * e)
    {
        NSLog(@"Exception: %@", e);
        NSLog(@"Fuera del try");
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
    });
}

@end
