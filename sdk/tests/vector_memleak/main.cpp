#include <stdio.h>

#include <vector>

void leak(){
	std::vector<int> v = {1, 2, 4, 3};
}

int main(){
	leak();


}
