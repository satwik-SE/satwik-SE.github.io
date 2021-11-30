# Information Flow Enforcement

## Isolate and Segregate Security Functions from Non-Security Functions

**Id:** Oak9.Req.IFE.1

**Sub category:** App Isolation and Segregation

**Description:** Isolate and segregate security functions from non-security functions

**Elaboration:** 

**Severity:** 

---

## Deny-all Communications and Only Allow-by-Exception

**Id:** Oak9.Req.IFE.10

**Sub category:** Protection at Trust Boundaries

**Description:** Deny all communications by default and only allow communication by permission

**Elaboration:** 

**Severity:** 

---

## External Connection Protection

**Id:** Oak9.Req.IFE.11

**Sub category:** Protection at Trust Boundaries

**Description:** Only allow connections to external networks through managed interfaces

**Elaboration:** 

**Severity:** 

---

## Reconnaissance Prevention

**Id:** Oak9.Req.IFE.12

**Sub category:** Protection at Trust Boundaries

**Description:** Prevent discovery of application or system information (e.g. IP addresses) and limit feedback to minimum necessary, such that attackers are required to have prior knowledge, or engage in prolonged reconnaissance, to successfully target the application

**Elaboration:** 

**Severity:** 

---

## Subnet Isolation

**Id:** Oak9.Req.IFE.13

**Sub category:** Protection at Trust Boundaries

**Description:** Logically segregate networks and control the information flow in and out of the network boundary

**Elaboration:** 

**Severity:** 

---

## Spit Tunneling

**Id:** Oak9.Req.IFE.14

**Sub category:** Protection at Trust Boundaries

**Description:** Do not allow remote devices establishing a non-remote connection to communicate with external (remote) resources

**Elaboration:** 

**Severity:** 

---

## Managed Inspection Points

**Id:** Oak9.Req.IFE.15

**Sub category:** Protection at Trust Boundaries

**Description:** Control and monitor all traffic by routing all traffic through authenticated proxy servers

**Elaboration:** 

**Severity:** 

---

## Design for Secure Failure

**Id:** Oak9.Req.IFE.16

**Sub category:** Protection at Trust Boundaries

**Description:** Design security gateways to fail securely

**Elaboration:** 

**Severity:** 

---

## Network Isolation and Segregation

**Id:** Oak9.Req.IFE.17

**Sub category:** Isolation and Segregation

**Description:** Isolate and segregate information systems and components from other systems and components based on criteria that, at minimum, includes functionality required, business impact of a breach, threat exposure and the associated business risk profile of the information system and component

**Elaboration:** Isolation and Segregation minimizes and contains the business impact to that information system or component due to a breach of other systems and components (or vice-versa), reduces the attack surface of the information system or component and ensures least privilege, through enforcement and monitoring controls at trust boundaries. 

**Severity:** 

---

## Isolate and Segregate - “Internal” from Externally-accessible

**Id:** Oak9.Req.IFE.18

**Sub category:** Network Isolation and Segregation

**Description:** Isolate and segregate externally-accessible systems from non-externally accessible systems

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate - Prod from Non-prod

**Id:** Oak9.Req.IFE.19

**Sub category:** Network Isolation and Segregation

**Description:** Isolate and segregate production systems from non-production systems

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate User Interface from Management Interface

**Id:** Oak9.Req.IFE.2

**Sub category:** App Isolation and Segregation

**Description:** Isolate and segregate the user, management and control interfaces from each other

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate - Security critical from non-security critical

**Id:** Oak9.Req.IFE.20

**Sub category:** Network Isolation and Segregation

**Description:** Isolate and segregate security critical systems from non-security critical systems

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate - Business critical from non-business critical

**Id:** Oak9.Req.IFE.21

**Sub category:** Network Isolation and Segregation

**Description:** Isolate and segregate business critical systems from non-business critical systems

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate - App tier from DB tier

**Id:** Oak9.Req.IFE.22

**Sub category:** Network Isolation and Segregation

**Description:** Isolate and segregate application tier components from data tier components

**Elaboration:** 

**Severity:** 

---

## Isolate and Segregate - Micro-segmentation

**Id:** Oak9.Req.IFE.23

**Sub category:** Platform Isolation and Segregation

**Description:** Isolate and segregate individual information systems from all other information systems

**Elaboration:** 

**Severity:** 

---

## Process Isolation and Segregation

**Id:** Oak9.Req.IFE.24

**Sub category:** Platform Isolation and Segregation

**Description:** Isolate and segregate processes running on the same platform by providing separate execution domains

**Elaboration:** 

**Severity:** 

---

## Design for Minimum Necessary Information Flows

**Id:** Oak9.Req.IFE.25

**Sub category:** Information Flow Enforcement

**Description:** Limit Information flow to minimum necessary to support the business need

**Elaboration:** Application architectures should be designed to minimize information flows to reduce the attack surface of the application. This includes both application and infrastructure information flows. 

**Severity:** 

---

## Firewalls

**Id:** Oak9.Req.IFE.26

**Sub category:** Network Information Flow Enforcement

**Description:** Configure firewalls to filter traffic and enforce the information flow control policy at minimum based on stateful packet inspection of network packets by inspecting packet headers

**Elaboration:** 

**Severity:** 

---

## Payload Inspection

**Id:** Oak9.Req.IFE.27

**Sub category:** Network Information Flow Enforcement

**Description:** Filter traffic and control the flow of information by inspecting the payload of the packets using deep packet inspection techniques

**Elaboration:** 

**Severity:** 

---

## Data Loss Prevention

**Id:** Oak9.Req.IFE.28

**Sub category:** Network Information Flow Enforcement

**Description:** Filter traffic and control the flow of information based on the sensitivity of the  information

**Elaboration:** 

**Severity:** 

---

## Dynamic Network Security

**Id:** Oak9.Req.IFE.29

**Sub category:** Network Information Flow Enforcement

**Description:** Use automation to dynamically update network security policies in reaction to changing business and security requirements

**Elaboration:** 

**Severity:** 

---

## Dynamic Application Security

**Id:** Oak9.Req.IFE.3

**Sub category:** App Isolation and Segregation

**Description:** Use automation to dynamically isolate and segregate applications or application components in reaction to changing business and security requirements

**Elaboration:** 

**Severity:** 

---

## Information Flow Routing

**Id:** Oak9.Req.IFE.30

**Sub category:** Network Information Flow Enforcement

**Description:** Configure application gateways and network routers to appropriately control the flow of network traffic

**Elaboration:** 

**Severity:** 

---

## Information Systems Enforcing Network Access

**Id:** Oak9.Req.IFE.31

**Sub category:** Network Information Flow Enforcement

**Description:** Configure platforms to control network communications and limit access to only authorized networks and network services

**Elaboration:** 

**Severity:** 

---

## Network Access Points Enforcing Network Access

**Id:** Oak9.Req.IFE.32

**Sub category:** Network Information Flow Enforcement

**Description:** Configure network access points to enforce the network security policy

**Elaboration:** 

**Severity:** 

---

## Application Segregation and Isolation

**Id:** Oak9.Req.IFE.33

**Sub category:** Isolation and Segregation

**Description:** Isolate and segregate applications and application components from other applications and components based on criteria that, at minimum, includes functionality required, business impact of a breach, threat exposure and the associated business risk profile of the application or component

**Elaboration:** Isolation and Segregation minimizes and contains the business impact to that information system or component due to a breach of other systems and components (or vice-versa), reduces the attack surface of the information system or component and ensures least privilege, through enforcement and monitoring controls at trust boundaries. 

**Severity:** 

---

## Application Thread Isolation

**Id:** Oak9.Req.IFE.4

**Sub category:** App Isolation and Segregation

**Description:** Configure platforms to provide a separate execution domain for each application thread

**Elaboration:** 

**Severity:** 

---

## Minimum Necessary App Flows

**Id:** Oak9.Req.IFE.5

**Sub category:** Application Information Flow Enforcement

**Description:** Limit Information flow to minimum necessary to support business need

**Elaboration:** 

**Severity:** 

---

## Data Sensitivity Based Information Flow Control

**Id:** Oak9.Req.IFE.6

**Sub category:** Application Information Flow Enforcement

**Description:** Control application traffic based on the sensitivity of the data

**Elaboration:** 

**Severity:** 

---

## Application Traffic Inspection

**Id:** Oak9.Req.IFE.7

**Sub category:** Application Information Flow Enforcement

**Description:** Check application traffic for malicious or unsanctioned content

**Elaboration:** 

**Severity:** 

---

## Encrypted Content Inspection

**Id:** Oak9.Req.IFE.8

**Sub category:** Application Information Flow Enforcement

**Description:** Check encrypted content at managed inspection points using approved content checking mechanisms

**Elaboration:** 

**Severity:** 

---

## URL Filtering

**Id:** Oak9.Req.IFE.9

**Sub category:** Application Information Flow Enforcement

**Description:** Maintain and enforce URL filters to limit and monitor an application's ability to connect to potentially malicious or unauthorized sites

**Elaboration:** 

**Severity:** 

---

