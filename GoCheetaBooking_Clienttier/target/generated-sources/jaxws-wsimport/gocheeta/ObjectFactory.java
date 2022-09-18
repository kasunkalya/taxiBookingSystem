
package gocheeta;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the gocheeta package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _AddDriverResponse_QNAME = new QName("http://gocheeta/", "addDriverResponse");
    private final static QName _HelloResponse_QNAME = new QName("http://gocheeta/", "helloResponse");
    private final static QName _GetActiveBookingDetails_QNAME = new QName("http://gocheeta/", "getActiveBookingDetails");
    private final static QName _GetBranchDrop_QNAME = new QName("http://gocheeta/", "getBranchDrop");
    private final static QName _GetActiveBookingDetailsResponse_QNAME = new QName("http://gocheeta/", "getActiveBookingDetailsResponse");
    private final static QName _Hello_QNAME = new QName("http://gocheeta/", "hello");
    private final static QName _AddDriver_QNAME = new QName("http://gocheeta/", "addDriver");
    private final static QName _GetBranchDropResponse_QNAME = new QName("http://gocheeta/", "getBranchDropResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: gocheeta
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AddDriverResponse }
     * 
     */
    public AddDriverResponse createAddDriverResponse() {
        return new AddDriverResponse();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link GetActiveBookingDetails }
     * 
     */
    public GetActiveBookingDetails createGetActiveBookingDetails() {
        return new GetActiveBookingDetails();
    }

    /**
     * Create an instance of {@link GetBranchDrop }
     * 
     */
    public GetBranchDrop createGetBranchDrop() {
        return new GetBranchDrop();
    }

    /**
     * Create an instance of {@link GetActiveBookingDetailsResponse }
     * 
     */
    public GetActiveBookingDetailsResponse createGetActiveBookingDetailsResponse() {
        return new GetActiveBookingDetailsResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link AddDriver }
     * 
     */
    public AddDriver createAddDriver() {
        return new AddDriver();
    }

    /**
     * Create an instance of {@link GetBranchDropResponse }
     * 
     */
    public GetBranchDropResponse createGetBranchDropResponse() {
        return new GetBranchDropResponse();
    }

    /**
     * Create an instance of {@link Person }
     * 
     */
    public Person createPerson() {
        return new Person();
    }

    /**
     * Create an instance of {@link User }
     * 
     */
    public User createUser() {
        return new User();
    }

    /**
     * Create an instance of {@link Branch }
     * 
     */
    public Branch createBranch() {
        return new Branch();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddDriverResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "addDriverResponse")
    public JAXBElement<AddDriverResponse> createAddDriverResponse(AddDriverResponse value) {
        return new JAXBElement<AddDriverResponse>(_AddDriverResponse_QNAME, AddDriverResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetActiveBookingDetails }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getActiveBookingDetails")
    public JAXBElement<GetActiveBookingDetails> createGetActiveBookingDetails(GetActiveBookingDetails value) {
        return new JAXBElement<GetActiveBookingDetails>(_GetActiveBookingDetails_QNAME, GetActiveBookingDetails.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBranchDrop }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getBranchDrop")
    public JAXBElement<GetBranchDrop> createGetBranchDrop(GetBranchDrop value) {
        return new JAXBElement<GetBranchDrop>(_GetBranchDrop_QNAME, GetBranchDrop.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetActiveBookingDetailsResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getActiveBookingDetailsResponse")
    public JAXBElement<GetActiveBookingDetailsResponse> createGetActiveBookingDetailsResponse(GetActiveBookingDetailsResponse value) {
        return new JAXBElement<GetActiveBookingDetailsResponse>(_GetActiveBookingDetailsResponse_QNAME, GetActiveBookingDetailsResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AddDriver }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "addDriver")
    public JAXBElement<AddDriver> createAddDriver(AddDriver value) {
        return new JAXBElement<AddDriver>(_AddDriver_QNAME, AddDriver.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetBranchDropResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://gocheeta/", name = "getBranchDropResponse")
    public JAXBElement<GetBranchDropResponse> createGetBranchDropResponse(GetBranchDropResponse value) {
        return new JAXBElement<GetBranchDropResponse>(_GetBranchDropResponse_QNAME, GetBranchDropResponse.class, null, value);
    }

}
