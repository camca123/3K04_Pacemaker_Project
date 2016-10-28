#ifndef SENSE_H
#define SENSE_H

#include "mbed.h"
#include "Pacemaker.h"

class Sense : public Pacemaker {
	private:
		//enum chambersSensed;
		//enum activityResponse;
		bool magnetInPlace;
		//enum activityThreshold;
	protected:
		//void setChambersSensed(enum);
		//void setActivityResponse(enum);
		uint16_t maxSensorRate;
		void setMagnetInPlace(bool);
		void measureLeadImpedance();
		void measureBatteryVoltage();
		
	public:
		Sense();
		//enum getChambersSensed();
		//enum getActivityResponse();
		bool getMagnetInPlace();
};

#endif // SENSE_H