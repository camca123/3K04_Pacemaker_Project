#ifndef LOGGING_H
#define LOGGING_H

#include "mbed.h"

class Logging {		
	public:
		Logging();
		
	protected:
		bool addCardiacEvent();
		void readCardiacEvents();
		bool clearCardiacEvents();
};

#endif // LOGGING_H