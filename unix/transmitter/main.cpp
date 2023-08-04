#include "../include/common/http_imp.h"
#include <Poco/URI.h>
#include <Poco/Net/IPAddress.h>
#include <string>

using std::string;

Poco::URI uri("http://localhost:631");

int main() {
    httpPing::preNpost transmitter(uri);
    transmitter.transmit(true);

    return 0;
}