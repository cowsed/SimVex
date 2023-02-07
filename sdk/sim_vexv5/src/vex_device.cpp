#include "include/vex_device.h"

namespace vex
{
    int32_t device::flags()
    {
        print_unimplimented();
        return -1;
    }
    device::device() { print_unimplimented(); }
    device::device(int32_t index) : _index(index) { print_unimplimented(); }
    device::~device(){print_unimplimented();}

    V5_DeviceType device::type()
    {
        print_unimplimented();
        return V5_DeviceType::kDeviceTypeNoSensor;
    }
    int32_t device::index()
    {
        print_unimplimented();
        return -1;
    }
    void device::init(int32_t index) { print_unimplimented(); }
    uint32_t device::timestamp()
    {
        print_unimplimented();
        return -1;
    }
      bool    device::installed(){print_unimplimented(); return false;}
      int32_t device::value(){print_unimplimented(); return -1;}
}