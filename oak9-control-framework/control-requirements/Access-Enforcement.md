# Access Enforcement

## Session Authentication

**Id:** Oak9.Req.AE.1

**Sub category:** Session Management

**Description:** Validates proper session based and token based authentication mechanisms are used and sessions are re-authenticated periodically

**Elaboration:** 

**Severity:** 

---

## Secure Browser Cookies

**Id:** Oak9.Req.AE.10

**Sub category:** Session Management

**Description:** Use of browser cookies should follow standards and industry best practices

**Elaboration:** https://owasp.org/www-community/controls/SecureFlag

**Severity:** 

---

## Access Policy Enforcement

**Id:** Oak9.Req.AE.11

**Sub category:** Access Enforcement

**Description:** Configure the policy enforcement point to enforce the access control policy and ensure minimum necessary access

**Elaboration:** 

**Severity:** 

---

## Bind Access Tokens

**Id:** Oak9.Req.AE.12

**Sub category:** Access Enforcement

**Description:** Bind access tokens to the Service Provider, Service Consumer and the End-User

**Elaboration:** 

**Severity:** 

---

## Limit Access Token Use

**Id:** Oak9.Req.AE.13

**Sub category:** Access Enforcement

**Description:** Limit duration and number of times access tokens can be used

**Elaboration:** 

**Severity:** 

---

## Access Control Policy

**Id:** Oak9.Req.AE.14

**Sub category:** Access Control Policy

**Description:** Define and enforce the access control policy and ensure that any attributes used in enforcing the policy are explicitly defined and consistently used to ensure that no inadvertent access is granted

**Elaboration:** 

**Severity:** 

---

## Privileged Access Management

**Id:** Oak9.Req.AE.15

**Sub category:** Least Privilege

**Description:** Ensure that all privileged access is managed through approved processes, in accordance with standards and best practices

**Elaboration:** 

**Severity:** 

---

## Trusted Devices for Privileged Access

**Id:** Oak9.Req.AE.16

**Sub category:** Least Privilege

**Description:** Require dedicated and trusted systems (Privileged Access Workstations) for all tasks needing privileged access

**Elaboration:** 

**Severity:** 

---

## Require Privilege Elevation (e.g. Sudo)

**Id:** Oak9.Req.AE.17

**Sub category:** Least Privilege

**Description:** Assign elevated privileges to a different account than the one used for normal business use

**Elaboration:** 

**Severity:** 

---

## Limit Output to Minimum Necessary

**Id:** Oak9.Req.AE.18

**Sub category:** Least Privilege

**Description:** Design applications and systems to only expose minimum necessary outputs

**Elaboration:** 

**Severity:** 

---

## Prevent Users From Disabling Security

**Id:** Oak9.Req.AE.19

**Sub category:** Least Privilege

**Description:** Ensure that users cannot disable configurations or software that can impact the effectiveness of the deployed security controls (unless they have necessary privileges)

**Elaboration:** 

**Severity:** 

---

## Session Limits

**Id:** Oak9.Req.AE.2

**Sub category:** Session Management

**Description:** Limit the duration and number of times access tokens can be used for a given session

**Elaboration:** 

**Severity:** 

---

## Restrict Access to Privileged Functions

**Id:** Oak9.Req.AE.20

**Sub category:** Least Privilege

**Description:** Restrict access to all privileged functions to only Users with a valid business need for the duration of that need

**Elaboration:** 

**Severity:** 

---

## Configure Sticky Sessions

**Id:** Oak9.Req.AE.21

**Sub category:** Session Management

**Description:** Route the requests for a particular session to the same system that serviced the first request for that session

**Elaboration:** 

**Severity:** 

---

## Protect Session Authenticity

**Id:** Oak9.Req.AE.3

**Sub category:** Session Management

**Description:** Protect the authenticity of communications sessions (at the application layer) from man-in-the-middle attacks/session hijacking and the insertion of false information into sessions

**Elaboration:** This requirement is limited to the Application Layer as opposed to the Transport Layer where authenticity can be provided by transport layer security protocols

**Severity:** 

---

## Lock Idle Sessions

**Id:** Oak9.Req.AE.4

**Sub category:** Session Management

**Description:** Initiate a session lock after a pre-defined period of inactivity and retain the lock until the user reestablishes the session through appropriate identification and authentication mechanisms

**Elaboration:** 

**Severity:** 

---

## Use Random Unique Session Identifiers

**Id:** Oak9.Req.AE.5

**Sub category:** Session Management

**Description:** Use a unique random session identifier for each session, that is generated using approved algorithms to ensure randomness

**Elaboration:** 

**Severity:** 

---

## Session Binding

**Id:** Oak9.Req.AE.6

**Sub category:** Session Management

**Description:** Bind sessions and related access tokens to the two ends of the session, the entity issuing the tokens and the End-User to  prevent sessions from being hijacked

**Elaboration:** Bind the two ends of the session using shared session secrets that are generated by the session host in direct response to the authentication event . 

**Severity:** 

---

## Maintain Session Context

**Id:** Oak9.Req.AE.7

**Sub category:** Session Management

**Description:** Prevent misuse of stolen session IDs or access tokens by maintaining necessary context regarding the session

**Elaboration:** 

**Severity:** 

---

## Limit Concurrent Sessions

**Id:** Oak9.Req.AE.8

**Sub category:** Session Management

**Description:** Limit the number of allowed concurrent sessions

**Elaboration:** 

**Severity:** 

---

## Limit the Assurance Placed in Sessions

**Id:** Oak9.Req.AE.9

**Sub category:** Session Management

**Description:** Sessions should not provide any more assurance that what is commensurate with the authentication event that triggers the session

**Elaboration:** 

**Severity:** 

---

