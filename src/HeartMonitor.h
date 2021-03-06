#ifndef HEARTMONITOR_H
#define HEARTMONITOR_H

#include "mbed.h"
#include "pinmap.h"

class HeartMonitor {
	private:
		float V_REF = 5.0f;
	
	public:
		uint16_t VRP;
		
		HeartMonitor();
		float getAtriumVoltage();
		float getVentricleVoltage();
		
	protected:
		uint8_t getVentricleRate();
		uint8_t getAtriumRate();
};

#endif // HEARTMONITOR_H