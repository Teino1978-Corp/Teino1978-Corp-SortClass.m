+ (NSArray *) sortArray: (NSArray *) sortingArray withValuesInArray: (NSArray *) sorterArray{
    //We will create a NSDictionary using the second array as keys and the first array as values
    NSDictionary *sortingDictionary = [NSDictionary dictionaryWithObjects:sorterArray forKeys:sortingArray];
    
    //Then we just create a new array sorted by the keys of the dictionary
    NSArray *sortedArray = [sortingDictionary keysSortedByValueUsingComparator: ^(id value1, id value2) {
        NSInteger number1 = [value1 integerValue];
        NSInteger number2 = [value2 integerValue];
        
        if (number1 > number2) {
            return (NSComparisonResult)NSOrderedDescending;
        }
        if (number1 < number2) {
            return (NSComparisonResult)NSOrderedAscending;
        }
        
        return (NSComparisonResult)NSOrderedSame;
    }];
    
    return sortedArray;
}