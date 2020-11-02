#include <stdio.h>
#include <string>
using namespace std;

int sizeString(string data)
{

  string sizeStrig = data.c_str();

  return sizeStrig.size();
}

int sumString(string data)
{
  int result = int(data[0]) + int(data[1]) + int(data[2]) + int(data[3]);
  return result;
}

int main(void)
{
  string data[4][2] = {{"aabb", "dados 1"}, {"casa", "dados 2"}, {"gato", "dados 3"}, {"foto", "dados 4"}};

  int metaData[4][2];

  for (int i = 0; i < 4; i++)
  {
    metaData[i][0] = sizeString(data[i][0]);

    printf("sizeStrig %i \n", metaData[i][0]);
  }

  sumString(data[0][0]);

  for (int i = 0; i < 4; i++)
  {
    metaData[i][1] = sumString(data[i][0]);

    printf("sumString %i \n", metaData[i][1]);
  }

  //printf("%i \n", metaData[0][3]);

  return 0;
}