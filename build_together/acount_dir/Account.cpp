#include "Account.h"
#include <iostream>

Account::Account(/* args */) 
{
    std::cout << "Account created" << std::endl;
}

Account::~Account() 
{
    std::cout << "Account destroyed" << std::endl;
}   