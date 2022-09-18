
package gocheeta;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for updateVehicleDriver complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="updateVehicleDriver">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="vehicle_no" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="vehical_Type" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="vehicle_model" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_email" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_password" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="branch" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="time_type" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "updateVehicleDriver", propOrder = {
    "vehicleNo",
    "vehicalType",
    "vehicleModel",
    "dName",
    "dEmail",
    "dPassword",
    "branch",
    "timeType"
})
public class UpdateVehicleDriver {

    @XmlElement(name = "vehicle_no")
    protected String vehicleNo;
    @XmlElement(name = "vehical_Type")
    protected String vehicalType;
    @XmlElement(name = "vehicle_model")
    protected String vehicleModel;
    @XmlElement(name = "d_name")
    protected String dName;
    @XmlElement(name = "d_email")
    protected String dEmail;
    @XmlElement(name = "d_password")
    protected String dPassword;
    protected String branch;
    @XmlElement(name = "time_type")
    protected String timeType;

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

    /**
     * Gets the value of the dName property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDName() {
        return dName;
    }

    /**
     * Sets the value of the dName property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDName(String value) {
        this.dName = value;
    }

    /**
     * Gets the value of the dEmail property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDEmail() {
        return dEmail;
    }

    /**
     * Sets the value of the dEmail property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDEmail(String value) {
        this.dEmail = value;
    }

    /**
     * Gets the value of the dPassword property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDPassword() {
        return dPassword;
    }

    /**
     * Sets the value of the dPassword property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDPassword(String value) {
        this.dPassword = value;
    }

    /**
     * Gets the value of the branch property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getBranch() {
        return branch;
    }

    /**
     * Sets the value of the branch property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setBranch(String value) {
        this.branch = value;
    }

    /**
     * Gets the value of the timeType property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTimeType() {
        return timeType;
    }

    /**
     * Sets the value of the timeType property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTimeType(String value) {
        this.timeType = value;
    }

}
