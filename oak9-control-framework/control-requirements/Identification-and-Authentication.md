# Identification and Authentication

## Identification and Authentication

**Id:** Oak9.Req.IA.1

**Sub category:** Identification and Authentication

**Description:** Uniquely identify and authenticate person and non-person users

**Elaboration:** 

**Severity:** 

---

## Authentication Update

**Id:** Oak9.Req.IA.10

**Sub category:** Authenticator Management

**Description:** Change or refresh authenticators (e.g. passwords, tokens) at established frequencies

**Elaboration:** 

**Severity:** 

---

## Change Default Authenticators

**Id:** Oak9.Req.IA.11

**Sub category:** Authenticator Management

**Description:** Change all default authenticators (e.g. passwords, certificates) before deployment of a new application or system

**Elaboration:** 

**Severity:** 

---

## Do Not Allow Shared Authenticators

**Id:** Oak9.Req.IA.12

**Sub category:** Authenticator Management

**Description:** Assign authenticators to individual accounts and do not allow shared authenticators

**Elaboration:** 

**Severity:** 

---

## Password Complexity

**Id:** Oak9.Req.IA.13

**Sub category:** Authenticator Management

**Description:** Memorized secrets, such as passwords, should have appropriate complexity and length in accordance with organizational standards and industry best practices

**Elaboration:** Refer to best practices in NIST 800-63B for password complexity and length

**Severity:** 

---

## Salt & Hash Passwords

**Id:** Oak9.Req.IA.14

**Sub category:** Authenticator Management

**Description:** Store memorized secrets in a form that is resistant to offline attacks (e.g. hash with salt passwords using approved algorithms and protocols/schemes)

**Elaboration:** 

**Severity:** 

---

## Dictionary and Reuse Protection

**Id:** Oak9.Req.IA.15

**Sub category:** Authenticator Management

**Description:** Check passwords against lists of commonly used, expected or already compromised passwords and require users to update their password

**Elaboration:** 

**Severity:** 

---

## Replay Resistant Authentication

**Id:** Oak9.Req.IA.16

**Sub category:** Authenticator Management

**Description:** Use authentication protocols that are replay resistant by making it impractical to achieve a successful authentication by recording and replaying a previous authentication message

**Elaboration:** 

**Severity:** 

---

## Verifier Impersonation Protection

**Id:** Oak9.Req.IA.17

**Sub category:** Authenticator Management

**Description:** Prevent attackers from impersonating the authentication service that verifies the user's identity, and ensure that users are interacting with the correct authentication service

**Elaboration:** Authenticate the verifier and either (1) strongly and irreversibly bind the authenticator output to the public key of the certificate presented by the verifier to which it is sent, or to that verifier’s authenticated hostname or domain name; or (2) determine whether the verifier’s authenticated address, hostname or domain name is on a list of trusted verifiers, and release the authenticator output only to a verifier on that list

**Severity:** 

---

## Verifier Compromise Protection

**Id:** Oak9.Req.IA.18

**Sub category:** Authenticator Management

**Description:** Use authentication protocols that reasonably protect against a compromise of authentication service that verifies the user's identity

**Elaboration:** Use authentication protocols that are reasonably resistant to a compromise of the verifier by either (1) using a cryptographic authenticator that either requires that the verifier store a public key corresponding to a private key held by the authenticator or (2) store the expected authenticator output in hashed form using approved hashing algorithms

**Severity:** 

---

## User Intent Validation

**Id:** Oak9.Req.IA.19

**Sub category:** Authenticator Management

**Description:** Establish the user's intent to perform a privileged action by explicitly requiring the person user to respond to an authentication or reauthentication request

**Elaboration:** 

**Severity:** 

---

## Destination Authentication

**Id:** Oak9.Req.IA.2

**Sub category:** Identification and Authentication

**Description:** Authenticate the destination for communications between two systems e.g. server authentication using TLS certificates

**Elaboration:** 

**Severity:** 

---

## Logon Time Limits

**Id:** Oak9.Req.IA.20

**Sub category:** Authenticator Management

**Description:** Enforce minimum and maximum time limits for logon processes

**Elaboration:** 

**Severity:** 

---

## Unsuccessful Logon Attempt Limits

**Id:** Oak9.Req.IA.21

**Sub category:** Authenticator Management

**Description:** Limit the number of unsuccessful logon attempts

**Elaboration:** 

**Severity:** 

---

## Unsuccessful Logon Frequency Limits

**Id:** Oak9.Req.IA.22

**Sub category:** Authenticator Management

**Description:** Rate-limit consecutive unsuccessful logon attempts by adding increasing delays after each attempt

**Elaboration:** 

**Severity:** 

---

## Multi-Factor Authentication

**Id:** Oak9.Req.IA.23

**Sub category:** Authenticator Management

**Description:** Ensure Multi-factor authentication using an approved authentication protocol that validates possession and control of authenticators that has two or more authentication factors (something you know, something you have, something you are)

**Elaboration:** 

**Severity:** 

---

## Source Authentication

**Id:** Oak9.Req.IA.3

**Sub category:** Identification and Authentication

**Description:** Authenticate the source for communications between two systems e.g. client authentication for mutual-TLS using certificates

**Elaboration:** 

**Severity:** 

---

## Single-Sign-On

**Id:** Oak9.Req.IA.4

**Sub category:** Identification and Authentication

**Description:** Integrate with the Single-Sign-On solution

**Elaboration:** 

**Severity:** 

---

## Password Masking

**Id:** Oak9.Req.IA.5

**Sub category:** Authenticator Management

**Description:** Mask passwords and other secrets when displayed and optionally allow users to unmask for improved usability

**Elaboration:** 

**Severity:** 

---

## Authentication Feedback Design

**Id:** Oak9.Req.IA.6

**Sub category:** Authenticator Management

**Description:** Perform authentication only after all authentication inputs are provided and minimize the information disclosed to an attacker

**Elaboration:** 

**Severity:** 

---

## Authenticator Lifetime and Reuse Limiting

**Id:** Oak9.Req.IA.7

**Sub category:** Authenticator Management

**Description:** Establish and enforce lifetime restriction and reuse conditions for authenticators (e.g. passwords, tokens)

**Elaboration:** 

**Severity:** 

---

## Authenticator Protection

**Id:** Oak9.Req.IA.8

**Sub category:** Authenticator Management

**Description:** Protect authenticators (e.g. passwords, tokens) from unauthorized disclosure or modification using security mechanisms of strength commensurate with the business impact of the loss of the authenticator

**Elaboration:** Consider protection of the authenticator during generation, distribution, storage and use.  NIST SP 800-63B provides a good list of authenticator types. • Memorized Secret • Look-Up Secret  • Out-of-Band Devices • Single-Factor One-Time Password (OTP) Device • Multi-Factor OTP Device • Single-Factor Cryptographic Software • Single-Factor Cryptographic Device • Multi-Factor Cryptographic Software • Multi-Factor Cryptographic Device Memorized secrets/Passwords should be stored in a form that is resistant to offline attacks.  For example, by hashing with salting passwords using approved algorithms and protocols/schemes.

**Severity:** 

---

## Authentication Storage Protection

**Id:** Oak9.Req.IA.9

**Sub category:** Authenticator Management

**Description:** Do not persistently store authenticators in a form where they are susceptible to compromise

**Elaboration:** 

**Severity:** 

---

