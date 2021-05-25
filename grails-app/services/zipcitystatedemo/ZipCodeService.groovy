package zipcitystatedemo

import zipcitystate.ZipCityState
import zipcitystate.CityStateLookup

class ZipCodeService implements CityStateLookup {

    ZipCityState lookupByZip(String code) {
        def zipCode = ZipCode.findByCode(code)
        zipCode ? [code:zipCode.code,city:zipCode.city,state:zipCode.state] as ZipCityState : null
    }

}
