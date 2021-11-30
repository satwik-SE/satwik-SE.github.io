# Key Management

## Limit Key Lifetime and Rotate Keys

**Id:** Oak9.Req.KM.1

**Sub category:** Key Lifecycle

**Description:** Ensure that keys have a maximum lifetime and are rotated prior to expiration in accordance with existing standards & best practices

**Elaboration:** 

**Severity:** 

---

## Protect Cryptographic Keys

**Id:** Oak9.Req.KM.2

**Sub category:** Protection of Keys

**Description:** Protect keys during storage, use and distribution using vetted and established protocols and mechanisms of strength commensurate with the business impact of the loss of the key

**Elaboration:** This requirement focuses on the protection of cryptographic keys used for confidentiality, integrity and authentication.  Refer to Oak9.Req.IA.8 for protection of authenticator secrets such as passwords.

**Severity:** 

---

## Ensure Key Availability

**Id:** Oak9.Req.KM.3

**Sub category:** Key Lifecycle

**Description:** Protect the availability of keys by ensuring highly available designs and use formal mechanisms to recover key in the event of a lost or destroyed key

**Elaboration:** 

**Severity:** 

---

## Issue Keys from Trusted Authorities

**Id:** Oak9.Req.KM.4

**Sub category:** Trusted Authorities

**Description:** Keys and digital certificates should be issued from and managed by trusted authorities

**Elaboration:** 

**Severity:** 

---

## Support Key Revocation

**Id:** Oak9.Req.KM.5

**Sub category:** Key Lifecycle

**Description:** Support revocation of keys in the event that a key is no longer valid or is suspected to be compromised

**Elaboration:** 

**Severity:** 

---

## Establish a Key Management Plan

**Id:** Oak9.Req.KM.6

**Sub category:** Key Management Plan

**Description:** Establish a key management plan that covers the  entire key lifecycle and related operational procedures

**Elaboration:** Consider the following: (1) Roles and Responsibilities, (2) Key Generation (3) Cross Certification Agreements,  (4) Key Distribution and Revocation Structures (4) Key Lifespans / Cryptoperiods, (5) Tracking of and Accounting for Keys and Certificates, (6) Protection of Keying Material / Key Storage, (7) Emergency and Routine Revocation of Keying Material,  (8) Auditing, (9) Key Renewal, (10) Keying Material Destruction, (11) Key Backup and Recovery, (12) Compromise Recovery, (13) Policy Violation Consequences, and (14) Documentation procedures

**Severity:** 

---

## Design a Hierarchical PKI

**Id:** Oak9.Req.KM.7

**Sub category:** PKI

**Description:** Establish an n-tier hierarchy for digital certificates to minimize the impact of a compromised issuing CA key and support the different levels of assurance required of the issued keys

**Elaboration:** Offline Root CAs with long (20-30yr) validity periods should be used to sign certificates for Online Issuing CAs with medium (3-5yr) validity periods. Online Issuing CAs should be used to sign server and client certificates.

**Severity:** 

---

