#import "AztecDecoder.h"
#import "AztecReader.h"

@implementation AztecDecoder

- (NSString *)decode:(NSString *)base64string {
    AztecReader *reader = [AztecReader new];
    
    NSString *normalizedString = [self normalizeBase64:base64string];
    NSData* encodedData = [[NSData alloc] initWithBase64EncodedString:normalizedString options:NSDataBase64DecodingIgnoreUnknownCharacters];
    NSString *decodedRawData = [reader read:encodedData];
    
    return decodedRawData;
}

- (NSString *)normalizeBase64:(NSString *)base64string {
    NSString *resultString = @"";
    
    NSRange range = [base64string rangeOfString:@"=" options:NSBackwardsSearch];
    if (range.location == NSNotFound) {
        resultString = [base64string substringToIndex:base64string.length-1];
    }
    else {
        resultString = [base64string substringToIndex:range.location+1];
    }
    
    return resultString;
}

@end

