# oak9 Requirement Documentation

## Access Enforcement

* * *

## Table of Contents

* * *

[](#Oak9.Req.AE.1)

[**Oak9.Req.AE.1**](#Oak9.Req.AE.1)

[](#Oak9.Req.AE.1)[

**Oak9.Req.AE.10**

](#Oak9.Req.AE.10)[

**Oak9.Req.AE.11**

](#Oak9.Req.AE.11)[

**Oak9.Req.AE.12**

](#Oak9.Req.AE.12)[

**Oak9.Req.AE.13**

](#Oak9.Req.AE.13)[

**Oak9.Req.AE.14**

](#Oak9.Req.AE.14)[

**Oak9.Req.AE.15**

](#Oak9.Req.AE.15)[

**Oak9.Req.AE.16**

](#Oak9.Req.AE.16)[

**Oak9.Req.AE.17**

](#Oak9.Req.AE.17)[

**Oak9.Req.AE.18**

](#Oak9.Req.AE.18)[

**Oak9.Req.AE.19**

](#Oak9.Req.AE.19)[

**Oak9.Req.AE.2**

](#Oak9.Req.AE.2)[

**Oak9.Req.AE.20**

](#Oak9.Req.AE.20)[

**Oak9.Req.AE.21**

](#Oak9.Req.AE.21)[

**Oak9.Req.AE.3**

](#Oak9.Req.AE.3)[

**Oak9.Req.AE.4**

](#Oak9.Req.AE.4)[

**Oak9.Req.AE.5**

](#Oak9.Req.AE.5)[

**Oak9.Req.AE.6**

](#Oak9.Req.AE.6)[

**Oak9.Req.AE.7**

](#Oak9.Req.AE.7)[

**Oak9.Req.AE.8**

](#Oak9.Req.AE.8)[

**Oak9.Req.AE.9**

](#Oak9.Req.AE.9)

* * *

**Oak9.Req.AE.1**

**Subcategory:**

Session Management

**Name:**

Session Authentication

**Description:**

Validates proper session based and token based authentication mechanisms are used and sessions are re-authenticated periodically

**Oak9.Req.AE.10**

**Subcategory:**

Session Management

**Name:**

Secure Browser Cookies

**Description:**

Use of browser cookies should follow standards and industry best practices

**Oak9.Req.AE.11**

**Subcategory:**

Access Enforcement

**Name:**

Access Policy Enforcement

**Description:**

Configure the policy enforcement point to enforce the access control policy and ensure minimum necessary access

**Oak9.Req.AE.12**

**Subcategory:**

Access Enforcement

**Name:**

Bind Access Tokens

**Description:**

Bind access tokens to the Service Provider, Service Consumer and the End-User

**Oak9.Req.AE.13**

**Subcategory:**

Access Enforcement

**Name:**

Limit Access Token Use

**Description:**

Limit duration and number of times access tokens can be used

**Oak9.Req.AE.14**

**Subcategory:**

Access Control Policy

**Name:**

Access Control Policy

**Description:**

Define and enforce the access control policy and ensure that any attributes used in enforcing the policy are explicitly defined and consistently used to ensure that no inadvertent access is granted

**Oak9.Req.AE.15**

**Subcategory:**

Least Privilege

**Name:**

Privileged Access Management

**Description:**

Ensure that all privileged access is managed through approved processes, in accordance with standards and best practices

**Oak9.Req.AE.16**

**Subcategory:**

Least Privilege

**Name:**

Trusted Devices for Privileged Access

**Description:**

Require dedicated and trusted systems (Privileged Access Workstations) for all tasks needing privileged access

**Oak9.Req.AE.17**

**Subcategory:**

Least Privilege

**Name:**

Require Privilege Elevation (e.g. Sudo)

**Description:**

Assign elevated privileges to a different account than the one used for normal business use

**Oak9.Req.AE.18**

**Subcategory:**

Least Privilege

**Name:**

Limit Output to Minimum Necessary

**Description:**

Design applications and systems to only expose minimum necessary outputs

**Oak9.Req.AE.19**

**Subcategory:**

Least Privilege

**Name:**

Prevent Users From Disabling Security

**Description:**

Ensure that users cannot disable configurations or software that can impact the effectiveness of the deployed security controls (unless they have necessary privileges)

**Oak9.Req.AE.2**

**Subcategory:**

Session Management

**Name:**

Session Limits

**Description:**

Limit the duration and number of times access tokens can be used for a given session

**Oak9.Req.AE.20**

**Subcategory:**

Least Privilege

**Name:**

Restrict Access to Privileged Functions

**Description:**

Restrict access to all privileged functions to only Users with a valid business need for the duration of that need

**Oak9.Req.AE.21**

**Subcategory:**

Session Management

**Name:**

Configure Sticky Sessions

**Description:**

Route the requests for a particular session to the same system that serviced the first request for that session

**Oak9.Req.AE.3**

**Subcategory:**

Session Management

**Name:**

Protect Session Authenticity

**Description:**

Protect the authenticity of communications sessions (at the application layer) from man-in-the-middle attacks/session hijacking and the insertion of false information into sessions

**Oak9.Req.AE.4**

**Subcategory:**

Session Management

**Name:**

Lock Idle Sessions

**Description:**

Initiate a session lock after a pre-defined period of inactivity and retain the lock until the user reestablishes the session through appropriate identification and authentication mechanisms

**Oak9.Req.AE.5**

**Subcategory:**

Session Management

**Name:**

Use Random Unique Session Identifiers

**Description:**

Use a unique random session identifier for each session, that is generated using approved algorithms to ensure randomness

**Oak9.Req.AE.6**

**Subcategory:**

Session Management

**Name:**

Session Binding

**Description:**

Bind sessions and related access tokens to the two ends of the session, the entity issuing the tokens and the End-User to prevent sessions from being hijacked

**Oak9.Req.AE.7**

**Subcategory:**

Session Management

**Name:**

Maintain Session Context

**Description:**

Prevent misuse of stolen session IDs or access tokens by maintaining necessary context regarding the session

**Oak9.Req.AE.8**

**Subcategory:**

Session Management

**Name:**

Limit Concurrent Sessions

**Description:**

Limit the number of allowed concurrent sessions

**Oak9.Req.AE.9**

**Subcategory:**

Session Management

**Name:**

Limit the Assurance Placed in Sessions

**Description:**

Sessions should not provide any more assurance that what is commensurate with the authentication event that triggers the session

* * *
