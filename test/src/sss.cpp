#include <iostream>
#include <vector>
#include <algorithm>

int findMax(const std::vector<int>& nums) {
    if (nums.empty()) {
        throw std::runtime_error("Input vector is empty");
    }
    
    int maxNum = nums[0];
    for (size_t i = 1; i < nums.size(); i++) {
        if (nums[i] > maxNum) {
            maxNum = nums[i];
        }
    }
    
    return maxNum;
}

int main() {
    std::vector<int> numbers = {5, 2, 9, 1, 7};
    int maxNumber = findMax(numbers);
    
    std::cout << "The maximum number is: " << maxNumber << std::endl;
    
    return 0;
}
