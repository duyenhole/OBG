#include <iomanip>
#include <iostream>
#include <sstream>

#include <vsomeip/vsomeip.hpp>

#define SAMPLE_SERVICE_ID 0x1234
#define SAMPLE_INSTANCE_ID 0x5678
#define SAMPLE_METHOD_ID 0x0421
#define SAMPLE_METHOD_ID_1 0x0422
#define SAMPLE_METHOD_ID_2 0x0423

std::shared_ptr<vsomeip::application> app;

void on_message(const std::shared_ptr<vsomeip::message> &_request) {

    std::shared_ptr<vsomeip::payload> its_payload = _request->get_payload();
    vsomeip::length_t l = its_payload->get_length();
    vsomeip::method_t method_id = _request->get_method();

    // Get payload
    std::stringstream ss;
    for (vsomeip::length_t i=0; i<l; i++) {
       ss << std::setw(2) << std::setfill('0') << std::hex
          << (int)*(its_payload->get_data()+i) << " ";
    }

    std::cout << "SERVICE: Received a request with Client/Session ["
        << std::setw(4) << std::setfill('0') << std::hex << _request->get_client() << "/"
        << std::setw(4) << std::setfill('0') << std::hex << _request->get_session() << "/"
        << std::setw(4) << std::setfill('0') << std::hex << _request->get_method() << "] "
        << ss.str() << std::endl;

    // Create response
    std::shared_ptr<vsomeip::message> its_response = vsomeip::runtime::get()->create_response(_request);
    its_payload = vsomeip::runtime::get()->create_payload();
    std::vector<vsomeip::byte_t> its_payload_data;

    switch(method_id) {
        case SAMPLE_METHOD_ID:
            for (int i=9; i>=0; i--) {
                its_payload_data.push_back(i % 256);
            }
            its_payload->set_data(its_payload_data);
            its_response->set_payload(its_payload);
            app->send(its_response);
            break;
        case SAMPLE_METHOD_ID_1:
            for (int i=20; i>=10; i--) {
                its_payload_data.push_back(i % 256);
            }
            its_payload->set_data(its_payload_data);
            its_response->set_payload(its_payload);
            app->send(its_response);
            break;
        case SAMPLE_METHOD_ID_2:
        default:
        break;
    }

}

int main() {

   app = vsomeip::runtime::get()->create_application("World");
   app->init();
   app->register_message_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_METHOD_ID, on_message);
   app->register_message_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_METHOD_ID_1, on_message);
   app->register_message_handler(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID, SAMPLE_METHOD_ID_2, on_message);
   app->offer_service(SAMPLE_SERVICE_ID, SAMPLE_INSTANCE_ID);
   app->start();
}