#import "AztecReader.h"
#import "BitsReader.h"

@implementation AztecReader

- (NSString *)read:(NSData *)data {
    
    BitsReader * bitsReader = [[BitsReader alloc] init:data startIdx:4];
    NSMutableData *output = [[NSMutableData alloc] init];
    int off_copy = 0;

    while (YES) {
        if (bitsReader.endOfData == YES) {
          break;
        }

        while ([bitsReader readBit] == 1) {
            uint32_t readByte = [bitsReader readByte];
            [output appendBytes:&readByte length:1];
        }

        int off = 1;
        int lng = 0;

        while (YES) {
          if (bitsReader.endOfData == YES) {
            break;
          }
            
          off *= 2;
          off += [bitsReader readBit];
            
          if ([bitsReader readBit] == 1) {
            break;
          }
          off--;
          off *= 2;
          off += [bitsReader readBit];
        }

        if (off == 2) {
          lng = [bitsReader readBit];
          off = off_copy;
        }
         else {
          off -= 3;
          off = off << 8;
          int b = [bitsReader readByte];
          off += b;
          if ([bitsReader endOfData] == YES) {
            return [self getDecodedText:output];
          }
          lng = (off ^ 1) & 1;
        }
        if (lng == 0) {
          if ([bitsReader readBit] == 1) {
            lng = 3 + [bitsReader readBit];
          }
           else {
            ++lng;

            do {
              lng *= 2;
              lng += [bitsReader readBit];
            }
             while ([bitsReader readBit] == 0);
            lng += 3;
          }
        }
         else {
          lng = 1 + [bitsReader readBit];
        }
        if (off < 0) {
          off = (off & 0xFF);
        }
        off_copy = off;
        if (((uint32_t)((uint32_t)off) >> 1) > 0x500) {
          ++lng;
        }
        long offset = (uint32_t)(((uint32_t)off) >> 1);
        long startPos = output.length - 1 - offset;
        long length = lng;

        while (length-- >= 0) {
            long pos = startPos++;
            const char *outBytes = [output bytes];
            const char exByte = outBytes[pos];
            [output appendBytes:&exByte length:1];
        }

    } // end of main loop

    return [self getDecodedText:output];
}

- (NSString *) getDecodedText:(NSData *)bytes {
  return [[NSString alloc] initWithData:bytes encoding:NSUTF16LittleEndianStringEncoding];
}

@end
