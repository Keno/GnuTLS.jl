# Error maps (maps err to (NAME, Description))

const error_codes = @compat Dict(
 0       => ("GNUTLS_E_SUCCESS","Success."),
-3       => ("GNUTLS_E_UNKNOWN_COMPRESSION_ALGORITHM","Could not negotiate a supported compression method."),
-6       => ("GNUTLS_E_UNKNOWN_CIPHER_TYPE","The cipher type is unsupported."),
-7       => ("GNUTLS_E_LARGE_PACKET","The transmitted packet is too large (EMSGSIZE)."),
-8       => ("GNUTLS_E_UNSUPPORTED_VERSION_PACKET","A record packet with illegal version was received."),
-9       => ("GNUTLS_E_UNEXPECTED_PACKET_LENGTH","A TLS packet with unexpected length was received."),
-10      => ("GNUTLS_E_INVALID_SESSION","The specified session has been invalidated for some reason."),
-12      => ("GNUTLS_E_FATAL_ALERT_RECEIVED","A TLS fatal alert has been received."),
-15      => ("GNUTLS_E_UNEXPECTED_PACKET","An unexpected TLS packet was received."),
-16      => ("GNUTLS_E_WARNING_ALERT_RECEIVED","A TLS warning alert has been received."),
-18      => ("GNUTLS_E_ERROR_IN_FINISHED_PACKET","An error was encountered at the TLS Finished packet calculation."),
-19      => ("GNUTLS_E_UNEXPECTED_HANDSHAKE_PACKET","An unexpected TLS handshake packet was received."),
-21      => ("GNUTLS_E_UNKNOWN_CIPHER_SUITE","Could not negotiate a supported cipher suite."),
-22      => ("GNUTLS_E_UNWANTED_ALGORITHM","An algorithm that is not enabled was negotiated."),
-23      => ("GNUTLS_E_MPI_SCAN_FAILED","The scanning of a large integer has failed."),
-24      => ("GNUTLS_E_DECRYPTION_FAILED","Decryption has failed."),
-25      => ("GNUTLS_E_MEMORY_ERROR","Internal error in memory allocation."),
-26      => ("GNUTLS_E_DECOMPRESSION_FAILED","Decompression of the TLS record packet has failed."),
-27      => ("GNUTLS_E_COMPRESSION_FAILED","Compression of the TLS record packet has failed."),
-28      => ("GNUTLS_E_AGAIN","Resource temporarily unavailable, try again."),
-29      => ("GNUTLS_E_EXPIRED","The requested session has expired."),
-30      => ("GNUTLS_E_DB_ERROR","Error in Database backend."),
-31      => ("GNUTLS_E_SRP_PWD_ERROR","Error in password file."),
-32      => ("GNUTLS_E_INSUFFICIENT_CREDENTIALS","Insufficient credentials for that request."),
-33      => ("GNUTLS_E_HASH_FAILED","Hashing has failed."),
-34      => ("GNUTLS_E_BASE64_DECODING_ERROR","Base64 decoding error."),
-35      => ("GNUTLS_E_MPI_PRINT_FAILED","Could not export a large integer."),
-37      => ("GNUTLS_E_REHANDSHAKE","Rehandshake was requested by the peer."),
-38      => ("GNUTLS_E_GOT_APPLICATION_DATA","TLS Application data were received, while expecting handshake data."),
-39      => ("GNUTLS_E_RECORD_LIMIT_REACHED","The upper limit of record packet sequence numbers has been reached. Wow!"),
-40      => ("GNUTLS_E_ENCRYPTION_FAILED","Encryption has failed."),
-43      => ("GNUTLS_E_CERTIFICATE_ERROR","Error in the certificate."),
-44      => ("GNUTLS_E_PK_ENCRYPTION_FAILED","Public key encryption has failed."),
-45      => ("GNUTLS_E_PK_DECRYPTION_FAILED","Public key decryption has failed."),
-46      => ("GNUTLS_E_PK_SIGN_FAILED","Public key signing has failed."),
-47      => ("GNUTLS_E_X509_UNSUPPORTED_CRITICAL_EXTENSION","Unsupported critical extension in X.509 certificate."),
-48      => ("GNUTLS_E_KEY_USAGE_VIOLATION","Key usage violation in certificate has been detected."),
-49      => ("GNUTLS_E_NO_CERTIFICATE_FOUND","No certificate was found."),
-50      => ("GNUTLS_E_INVALID_REQUEST","The request is invalid."),
-51      => ("GNUTLS_E_SHORT_MEMORY_BUFFER","The given memory buffer is too short to hold parameters."),
-52      => ("GNUTLS_E_INTERRUPTED","Function was interrupted."),
-53      => ("GNUTLS_E_PUSH_ERROR","Error in the push function."),
-54      => ("GNUTLS_E_PULL_ERROR","Error in the pull function."),
-55      => ("GNUTLS_E_RECEIVED_ILLEGAL_PARAMETER","An illegal parameter has been received."),
-56      => ("GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE","The requested data were not available."),
-57      => ("GNUTLS_E_PKCS1_WRONG_PAD","Wrong padding in PKCS1 packet."),
-58      => ("GNUTLS_E_RECEIVED_ILLEGAL_EXTENSION","An illegal TLS extension was received."),
-59      => ("GNUTLS_E_INTERNAL_ERROR","GnuTLS internal error."),
-60      => ("GNUTLS_E_CERTIFICATE_KEY_MISMATCH","The certificate and the given key do not match."),
-61      => ("GNUTLS_E_UNSUPPORTED_CERTIFICATE_TYPE","The certificate type is not supported."),
-62      => ("GNUTLS_E_X509_UNKNOWN_SAN","Unknown Subject Alternative name in X.509 certificate."),
-63      => ("GNUTLS_E_DH_PRIME_UNACCEPTABLE","The Diffie-Hellman prime sent by the server is not acceptable (not long enough)."),
-64      => ("GNUTLS_E_FILE_ERROR","Error while reading file."),
-67      => ("GNUTLS_E_ASN1_ELEMENT_NOT_FOUND","ASN1 parser: Element was not found."),
-68      => ("GNUTLS_E_ASN1_IDENTIFIER_NOT_FOUND","ASN1 parser: Identifier was not found"),
-69      => ("GNUTLS_E_ASN1_DER_ERROR","ASN1 parser: Error in DER parsing."),
-70      => ("GNUTLS_E_ASN1_VALUE_NOT_FOUND","ASN1 parser: Value was not found."),
-71      => ("GNUTLS_E_ASN1_GENERIC_ERROR","ASN1 parser: Generic parsing error."),
-72      => ("GNUTLS_E_ASN1_VALUE_NOT_VALID","ASN1 parser: Value is not valid."),
-73      => ("GNUTLS_E_ASN1_TAG_ERROR","ASN1 parser: Error in TAG."),
-74      => ("GNUTLS_E_ASN1_TAG_IMPLICIT","ASN1 parser: error in implicit tag"),
-75      => ("GNUTLS_E_ASN1_TYPE_ANY_ERROR","ASN1 parser: Error in type ’ANY’."),
-76      => ("GNUTLS_E_ASN1_SYNTAX_ERROR","ASN1 parser: Syntax error."),
-77      => ("GNUTLS_E_ASN1_DER_OVERFLOW","ASN1 parser: Overflow in DER parsing."),
-78      => ("GNUTLS_E_TOO_MANY_EMPTY_PACKETS","Too many empty record packets have been received."),
-79      => ("GNUTLS_E_OPENPGP_UID_REVOKED","The OpenPGP User ID is revoked."),
-80      => ("GNUTLS_E_UNKNOWN_PK_ALGORITHM","An unknown public key algorithm was encountered."),
-81      => ("GNUTLS_E_TOO_MANY_HANDSHAKE_PACKETS","Too many handshake packets have been received."),
-84      => ("GNUTLS_E_NO_TEMPORARY_RSA_PARAMS","No temporary RSA parameters were found."),
-86      => ("GNUTLS_E_NO_COMPRESSION_ALGORITHMS","No supported compression algorithms have been found."),
-87      => ("GNUTLS_E_NO_CIPHER_SUITES","No supported cipher suites have been found."),
-88      => ("GNUTLS_E_OPENPGP_GETKEY_FAILED","Could not get OpenPGP key."),
-89      => ("GNUTLS_E_PK_SIG_VERIFY_FAILED","Public key signature verification has failed."),
-90      => ("GNUTLS_E_ILLEGAL_SRP_USERNAME","The SRP username supplied is illegal."),
-91      => ("GNUTLS_E_SRP_PWD_PARSING_ERROR","Parsing error in password file."),
-93      => ("GNUTLS_E_NO_TEMPORARY_DH_PARAMS","No temporary DH parameters were found."),
-94      => ("GNUTLS_E_OPENPGP_FINGERPRINT_UNSUPPORTED","The OpenPGP fingerprint is not supported."),
-95      => ("GNUTLS_E_X509_UNSUPPORTED_ATTRIBUTE","The certificate has unsupported attributes."),
-96      => ("GNUTLS_E_UNKNOWN_HASH_ALGORITHM","The hash algorithm is unknown."),
-97      => ("GNUTLS_E_UNKNOWN_PKCS_CONTENT_TYPE","The PKCS structure’s content type is unknown."),
-98      => ("GNUTLS_E_UNKNOWN_PKCS_BAG_TYPE","The PKCS structure’s bag type is unknown."),
-99      => ("GNUTLS_E_INVALID_PASSWORD","The given password contains invalid characters."),
-100     => ("GNUTLS_E_MAC_VERIFY_FAILED","The Message Authentication Code verification failed."),
-101     => ("GNUTLS_E_CONSTRAINT_ERROR","Some constraint limits were reached."),
-102     => ("GNUTLS_E_WARNING_IA_IPHF_RECEIVED","Received a TLS/IA Intermediate Phase Finished message"),
-103     => ("GNUTLS_E_WARNING_IA_FPHF_RECEIVED","Received a TLS/IA Final Phase Finished message"),
-104     => ("GNUTLS_E_IA_VERIFY_FAILED","Verifying TLS/IA phase checksum failed"),
-105     => ("GNUTLS_E_UNKNOWN_ALGORITHM","The specified algorithm or protocol is unknown."),
-106     => ("GNUTLS_E_UNSUPPORTED_SIGNATURE_ALGORITHM","The signature algorithm is not supported."),
-107     => ("GNUTLS_E_SAFE_RENEGOTIATION_FAILED","Safe renegotiation failed."),
-108     => ("GNUTLS_E_UNSAFE_RENEGOTIATION_DENIED","Unsafe renegotiation denied."),
-109     => ("GNUTLS_E_UNKNOWN_SRP_USERNAME","The SRP username supplied is unknown."),
-110     => ("GNUTLS_E_PREMATURE_TERMINATION","The TLS connection was non-properly terminated."),
-201     => ("GNUTLS_E_BASE64_ENCODING_ERROR","Base64 encoding error."),
-202     => ("GNUTLS_E_INCOMPATIBLE_GCRYPT_LIBRARY","The crypto library version is too old."),
-203     => ("GNUTLS_E_INCOMPATIBLE_LIBTASN1_LIBRARY","The tasn1 library version is too old."),
-204     => ("GNUTLS_E_OPENPGP_KEYRING_ERROR","Error loading the keyring."),
-205     => ("GNUTLS_E_X509_UNSUPPORTED_OID","The OID is not supported."),
-206     => ("GNUTLS_E_RANDOM_FAILED","Failed to acquire random data."),
-207     => ("GNUTLS_E_BASE64_UNEXPECTED_HEADER_ERROR","Base64 unexpected header error."),
-208     => ("GNUTLS_E_OPENPGP_SUBKEY_ERROR","Could not find OpenPGP subkey."),
-209     => ("GNUTLS_E_CRYPTO_ALREADY_REGISTERED","There is already a crypto algorithm with lower priority."),
-210     => ("GNUTLS_E_HANDSHAKE_TOO_LARGE","The handshake data size is too large."),
-211     => ("GNUTLS_E_CRYPTODEV_IOCTL_ERROR","Error interfacing with /dev/crypto"),
-212     => ("GNUTLS_E_CRYPTODEV_DEVICE_ERROR","Error opening /dev/crypto"),
-213     => ("GNUTLS_E_CHANNEL_BINDING_NOT_AVAILABLE","Channel binding data not available"),
-214     => ("GNUTLS_E_BAD_COOKIE","The cookie was bad."),
-215     => ("GNUTLS_E_OPENPGP_PREFERRED_KEY_ERROR","The OpenPGP key has not a preferred key set."),
-216     => ("GNUTLS_E_INCOMPAT_DSA_KEY_WITH_TLS_PROTOCOL","The given DSA key is incompatible with the selected TLS protocol."),
-292     => ("GNUTLS_E_HEARTBEAT_PONG_RECEIVED","A heartbeat pong message was received."),
-293     => ("GNUTLS_E_HEARTBEAT_PING_RECEIVED","A heartbeat ping message was received."),
-300     => ("GNUTLS_E_PKCS11_ERROR","PKCS #11 error."),
-301     => ("GNUTLS_E_PKCS11_LOAD_ERROR","PKCS #11 initialization error."),
-302     => ("GNUTLS_E_PARSING_ERROR","Error in parsing."),
-303     => ("GNUTLS_E_PKCS11_PIN_ERROR","Error in provided PIN."),
-305     => ("GNUTLS_E_PKCS11_SLOT_ERROR","PKCS #11 error in slot"),
-306     => ("GNUTLS_E_LOCKING_ERROR","Thread locking error"),
-307     => ("GNUTLS_E_PKCS11_ATTRIBUTE_ERROR","PKCS #11 error in attribute"),
-308     => ("GNUTLS_E_PKCS11_DEVICE_ERROR","PKCS #11 error in device"),
-309     => ("GNUTLS_E_PKCS11_DATA_ERROR","PKCS #11 error in data"),
-310     => ("GNUTLS_E_PKCS11_UNSUPPORTED_FEATURE_ERROR","PKCS #11 unsupported feature"),
-311     => ("GNUTLS_E_PKCS11_KEY_ERROR","PKCS #11 error in key"),
-312     => ("GNUTLS_E_PKCS11_PIN_EXPIRED","PKCS #11 PIN expired"),
-313     => ("GNUTLS_E_PKCS11_PIN_LOCKED","PKCS #11 PIN locked"),
-314     => ("GNUTLS_E_PKCS11_SESSION_ERROR","PKCS #11 error in session"),
-315     => ("GNUTLS_E_PKCS11_SIGNATURE_ERROR","PKCS #11 error in signature"),
-316     => ("GNUTLS_E_PKCS11_TOKEN_ERROR","PKCS #11 error in token"),
-317     => ("GNUTLS_E_PKCS11_USER_ERROR","PKCS #11 user error"),
-318     => ("GNUTLS_E_CRYPTO_INIT_FAILED","The initialization of crypto backend has failed."),
-319     => ("GNUTLS_E_TIMEDOUT","The operation timed out"),
-320     => ("GNUTLS_E_USER_ERROR","The operation was cancelled due to user error"),
-321     => ("GNUTLS_E_ECC_NO_SUPPORTED_CURVES","No supported ECC curves were found"),
-322     => ("GNUTLS_E_ECC_UNSUPPORTED_CURVE","The curve is unsupported"),
-323     => ("GNUTLS_E_PKCS11_REQUESTED_OBJECT_NOT_AVAILBLE","The requested PKCS #11 object is not available"),
-324     => ("GNUTLS_E_CERTIFICATE_LIST_UNSORTED","The provided X.509 certificate list is not sorted (in subject to issuer order)"),
-325     => ("GNUTLS_E_ILLEGAL_PARAMETER","An illegal parameter was found."),
-326     => ("GNUTLS_E_NO_PRIORITIES_WERE_SET","No or insufficient priorities were set."),
-327     => ("GNUTLS_E_X509_UNSUPPORTED_EXTENSION","Unsupported extension in X.509 certificate."),
-328     => ("GNUTLS_E_SESSION_EOF","Peer has terminated the connection"),
-329     => ("GNUTLS_E_TPM_ERROR","TPM error."),
-330     => ("GNUTLS_E_TPM_KEY_PASSWORD_ERROR","Error in provided password for key to be loaded in TPM."),
-331     => ("GNUTLS_E_TPM_SRK_PASSWORD_ERROR","Error in provided SRK password for TPM."),
-332     => ("GNUTLS_E_TPM_SESSION_ERROR","Cannot initialize a session with the TPM."),
-333     => ("GNUTLS_E_TPM_KEY_NOT_FOUND","TPM key was not found in persistent storage."),
-334     => ("GNUTLS_E_TPM_UNINITIALIZED","TPM is not initialized."),
-340     => ("GNUTLS_E_NO_CERTIFICATE_STATUS","There is no certificate status (OCSP)."),
-341     => ("GNUTLS_E_OCSP_RESPONSE_ERROR","The OCSP response is invalid"),
-342     => ("GNUTLS_E_RANDOM_DEVICE_ERROR","Error in the system’s randomness device."),
-343     => ("GNUTLS_E_AUTH_ERROR","Could not authenticate peer."),
-344     => ("GNUTLS_E_NO_APPLICATION_PROTOCOL","No common application protocol could be negotiated."),
-1250    => ("GNUTLS_E_UNIMPLEMENTED_FEATURE", "Unimplemented Feature")
)
