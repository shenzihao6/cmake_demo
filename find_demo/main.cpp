#include <iostream>
#include <gflags/gflags.h>

DEFINE_string(name, "", "姓名");
DEFINE_string(age, 0, "年龄");

int main(int argc, char* argv[])
{
    gflags::ParseCommandLineFlags(&argc, &argv, true);

    std::cout << "name: " << FLAGS_name << std::endl;
    std::cout << "age: " << FLAGS_age << std::endl;

    return 0;
}
