#import <Foundation/Foundation.h>

@interface BitsReader : NSObject
@property (assign, nonatomic, readonly) BOOL endOfData;

- (instancetype)init:(NSData *)aztecData startIdx:(int)startIdx;
- (char)readBit;
- (uint32_t)readByte;

@end
