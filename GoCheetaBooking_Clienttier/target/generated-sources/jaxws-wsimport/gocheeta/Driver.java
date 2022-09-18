
package gocheeta;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for driver complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="driver">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="branch" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_email" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_name" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="d_password" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="driver_mobile" type="{http://www.w3.org/2001/XMLSchema}int"/>
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
@XmlType(name = "driver", propOrder = {
    "branch",
    "dEmail",
    "dName",
    "dPassword",
    "driverMobile",
    "timeType"
})
@XmlSeeAlso({
    Vehicle.class
})
public class Driver {

    protected String branch;
    @XmlElement(name = "d_email")
    protected String dEmail;
    @XmlElement(name = "d_name")
    protected String dName;
    @XmlElement(name = "d_password")
    protected String dPassword;
    @XmlElement(name = "driver_mobile")
    protected int driverMobile;
    @XmlElement(name = "time_type")
    protected String timeType;

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
