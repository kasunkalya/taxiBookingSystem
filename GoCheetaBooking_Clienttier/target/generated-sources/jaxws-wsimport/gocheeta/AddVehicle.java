
package gocheeta;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for addVehicle complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="addVehicle">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="driver_mobile" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="vehicle_no" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="vehical_Type" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="vehicle_model" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "addVehicle", propOrder = {
    "driverMobile",
    "vehicleNo",
    "vehicalType",
    "vehicleModel"
})
public class AddVehicle {

    @XmlElement(name = "driver_mobile")
    protected int driverMobile;
    @XmlElement(name = "vehicle_no")
    protected String vehicleNo;
    @XmlElement(name = "vehical_Type")
    protected String vehicalType;
    @XmlElement(name = "vehicle_model")
    protected String vehicleModel;

    /**
     * Gets the value of the driverMobile property.
     * 
     */
    public int getDriverMobile() {
        return driverMobile;
    }

    /**
     * Sets the value of the driverMobile property.
     * 
     */
    public void setDriverMobile(int value) {
        this.driverMobile = value;
    }

    /**
     * Gets the value of the vehicleNo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getVehicleNo() {
        return vehicleNo;
    }

    /**
     * Sets the value of the vehicleNo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setVehicleNo(String value) {
        this.vehicleNo = value;
    }

    /**
     * Gets the value of the vehicalType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getVehicalType() {
        return vehicalType;
    }

    /**
     * Sets the value of the vehicalType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setVehicalType(String value) {
        this.vehicalType = value;
    }

    /**
     * Gets the value of the vehicleModel property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getVehicleModel() {
        return vehicleModel;
    }

    /**
     * Sets the value of the vehicleModel property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setVehicleModel(String value) {
        this.vehicleModel = value;
    }

}
