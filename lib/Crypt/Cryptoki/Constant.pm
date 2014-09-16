package Crypt::Cryptoki::Constant;

use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

#
# grep "define CK[A-Z]" include/cryptoki/pkcs11t.h | awk '{ print $2 }' | sort
#

our %EXPORT_TAGS = (
	'helper' => [qw(
		rv_to_str
	)], 
	'attributes' => [ qw(
		CKA_AC_ISSUER
		CKA_ALLOWED_MECHANISMS
		CKA_ALWAYS_AUTHENTICATE
		CKA_ALWAYS_SENSITIVE
		CKA_APPLICATION
		CKA_ATTR_TYPES
		CKA_AUTH_PIN_FLAGS
		CKA_BASE
		CKA_BITS_PER_PIXEL
		CKA_CERTIFICATE_CATEGORY
		CKA_CERTIFICATE_TYPE
		CKA_CHAR_COLUMNS
		CKA_CHAR_ROWS
		CKA_CHAR_SETS
		CKA_CHECK_VALUE
		CKA_CLASS
		CKA_COEFFICIENT
		CKA_COLOR
		CKA_DECRYPT
		CKA_DEFAULT_CMS_ATTRIBUTES
		CKA_DERIVE
		CKA_ECDSA_PARAMS
		CKA_EC_PARAMS
		CKA_EC_POINT
		CKA_ENCODING_METHODS
		CKA_ENCRYPT
		CKA_END_DATE
		CKA_EXPONENT_1
		CKA_EXPONENT_2
		CKA_EXTRACTABLE
		CKA_HASH_OF_ISSUER_PUBLIC_KEY
		CKA_HASH_OF_SUBJECT_PUBLIC_KEY
		CKA_HAS_RESET
		CKA_HW_FEATURE_TYPE
		CKA_ID
		CKA_ISSUER
		CKA_JAVA_MIDP_SECURITY_DOMAIN
		CKA_KEY_GEN_MECHANISM
		CKA_KEY_TYPE
		CKA_LABEL
		CKA_LOCAL
		CKA_MECHANISM_TYPE
		CKA_MIME_TYPES
		CKA_MODIFIABLE
		CKA_MODULUS
		CKA_MODULUS_BITS
		CKA_NEVER_EXTRACTABLE
		CKA_OBJECT_ID
		CKA_OTP_CHALLENGE_REQUIREMENT
		CKA_OTP_COUNTER
		CKA_OTP_COUNTER_REQUIREMENT
		CKA_OTP_FORMAT
		CKA_OTP_LENGTH
		CKA_OTP_PIN_REQUIREMENT
		CKA_OTP_SERVICE_IDENTIFIER
		CKA_OTP_SERVICE_LOGO
		CKA_OTP_SERVICE_LOGO_TYPE
		CKA_OTP_TIME
		CKA_OTP_TIME_INTERVAL
		CKA_OTP_TIME_REQUIREMENT
		CKA_OTP_USER_FRIENDLY_MODE
		CKA_OTP_USER_IDENTIFIER
		CKA_OWNER
		CKA_PIXEL_X
		CKA_PIXEL_Y
		CKA_PRIME
		CKA_PRIME_1
		CKA_PRIME_2
		CKA_PRIME_BITS
		CKA_PRIVATE
		CKA_PRIVATE_EXPONENT
		CKA_PUBLIC_EXPONENT
		CKA_REQUIRED_CMS_ATTRIBUTES
		CKA_RESET_ON_INIT
		CKA_RESOLUTION
		CKA_SECONDARY_AUTH
		CKA_SENSITIVE
		CKA_SERIAL_NUMBER
		CKA_SIGN
		CKA_SIGN_RECOVER
		CKA_START_DATE
		CKA_SUBJECT
		CKA_SUBPRIME
		CKA_SUBPRIME_BITS
		CKA_SUB_PRIME_BITS
		CKA_SUPPORTED_CMS_ATTRIBUTES
		CKA_TOKEN
		CKA_TRUSTED
		CKA_UNWRAP
		CKA_UNWRAP_TEMPLATE
		CKA_URL
		CKA_VALUE
		CKA_VALUE_BITS
		CKA_VALUE_LEN
		CKA_VENDOR_DEFINED
		CKA_VERIFY
		CKA_VERIFY_RECOVER
		CKA_WRAP
		CKA_WRAP_TEMPLATE
		CKA_WRAP_WITH_TRUSTED
	)],
	'certificates' => [qw(
		CKC_VENDOR_DEFINED
		CKC_WTLS
		CKC_X_509
		CKC_X_509_ATTR_CERT
	)],
	'derivations' => [qw(
		CKD_NULL
		CKD_SHA1_KDF
		CKD_SHA1_KDF_ASN1
		CKD_SHA1_KDF_CONCATENATE
	)],	
	'flags' => [qw(
		CKF_ARRAY_ATTRIBUTE
		CKF_CLOCK_ON_TOKEN
		CKF_DECRYPT
		CKF_DERIVE
		CKF_DIGEST
		CKF_DONT_BLOCK
		CKF_DUAL_CRYPTO_OPERATIONS
		CKF_EC_COMPRESS
		CKF_EC_ECPARAMETERS
		CKF_EC_F_2M
		CKF_EC_F_P
		CKF_EC_NAMEDCURVE
		CKF_EC_UNCOMPRESS
		CKF_ENCRYPT
		CKF_EXCLUDE_CHALLENGE
		CKF_EXCLUDE_COUNTER
		CKF_EXCLUDE_PIN
		CKF_EXCLUDE_TIME
		CKF_EXTENSION
		CKF_GENERATE
		CKF_GENERATE_KEY_PAIR
		CKF_HW
		CKF_HW_SLOT
		CKF_LIBRARY_CANT_CREATE_OS_THREADS
		CKF_LOGIN_REQUIRED
		CKF_NEXT_OTP
		CKF_OS_LOCKING_OK
		CKF_PROTECTED_AUTHENTICATION_PATH
		CKF_REMOVABLE_DEVICE
		CKF_RESTORE_KEY_NOT_NEEDED
		CKF_RNG
		CKF_RW_SESSION
		CKF_SECONDARY_AUTHENTICATION
		CKF_SERIAL_SESSION
		CKF_SIGN
		CKF_SIGN_RECOVER
		CKF_SO_PIN_COUNT_LOW
		CKF_SO_PIN_FINAL_TRY
		CKF_SO_PIN_LOCKED
		CKF_SO_PIN_TO_BE_CHANGED
		CKF_TOKEN_INITIALIZED
		CKF_TOKEN_PRESENT
		CKF_UNWRAP
		CKF_USER_FRIENDLY_OTP
		CKF_USER_PIN_COUNT_LOW
		CKF_USER_PIN_FINAL_TRY
		CKF_USER_PIN_INITIALIZED
		CKF_USER_PIN_LOCKED
		CKF_USER_PIN_TO_BE_CHANGED
		CKF_VERIFY
		CKF_VERIFY_RECOVER
		CKF_WRAP
		CKF_WRITE_PROTECTED
	)],
	'mgf' => [qw(
		CKG_MGF1_SHA1
		CKG_MGF1_SHA224
		CKG_MGF1_SHA256
		CKG_MGF1_SHA384
		CKG_MGF1_SHA512
	)],
	'hardware' => [qw(
		CKH_CLOCK
		CKH_MONOTONIC_COUNTER
		CKH_USER_INTERFACE
		CKH_VENDOR_DEFINED
	)],
	'key_types' => [qw(
		CKK_ACTI
		CKK_AES
		CKK_ARIA
		CKK_BATON
		CKK_BLOWFISH
		CKK_CAMELLIA
		CKK_CAST
		CKK_CAST128
		CKK_CAST3
		CKK_CAST5
		CKK_CDMF
		CKK_DES
		CKK_DES2
		CKK_DES3
		CKK_DH
		CKK_DSA
		CKK_EC
		CKK_ECDSA
		CKK_GENERIC_SECRET
		CKK_HOTP
		CKK_IDEA
		CKK_JUNIPER
		CKK_KEA
		CKK_RC2
		CKK_RC4
		CKK_RC5
		CKK_RSA
		CKK_SECURID
		CKK_SKIPJACK
		CKK_TWOFISH
		CKK_VENDOR_DEFINED
		CKK_X9_42_DH
	)],
	'mechanisms' => [qw(
		CKM_ACTI
		CKM_ACTI_KEY_GEN
		CKM_AES_CBC
		CKM_AES_CBC_ENCRYPT_DATA
		CKM_AES_CBC_PAD
		CKM_AES_CTR
		CKM_AES_ECB
		CKM_AES_ECB_ENCRYPT_DATA
		CKM_AES_KEY_GEN
		CKM_AES_MAC
		CKM_AES_MAC_GENERAL
		CKM_ARIA_CBC
		CKM_ARIA_CBC_ENCRYPT_DATA
		CKM_ARIA_CBC_PAD
		CKM_ARIA_ECB
		CKM_ARIA_ECB_ENCRYPT_DATA
		CKM_ARIA_KEY_GEN
		CKM_ARIA_MAC
		CKM_ARIA_MAC_GENERAL
		CKM_BATON_CBC128
		CKM_BATON_COUNTER
		CKM_BATON_ECB128
		CKM_BATON_ECB96
		CKM_BATON_KEY_GEN
		CKM_BATON_SHUFFLE
		CKM_BATON_WRAP
		CKM_BLOWFISH_CBC
		CKM_BLOWFISH_KEY_GEN
		CKM_CAMELLIA_CBC
		CKM_CAMELLIA_CBC_ENCRYPT_DATA
		CKM_CAMELLIA_CBC_PAD
		CKM_CAMELLIA_CTR
		CKM_CAMELLIA_ECB
		CKM_CAMELLIA_ECB_ENCRYPT_DATA
		CKM_CAMELLIA_KEY_GEN
		CKM_CAMELLIA_MAC
		CKM_CAMELLIA_MAC_GENERAL
		CKM_CAST128_CBC
		CKM_CAST128_CBC_PAD
		CKM_CAST128_ECB
		CKM_CAST128_KEY_GEN
		CKM_CAST128_MAC
		CKM_CAST128_MAC_GENERAL
		CKM_CAST3_CBC
		CKM_CAST3_CBC_PAD
		CKM_CAST3_ECB
		CKM_CAST3_KEY_GEN
		CKM_CAST3_MAC
		CKM_CAST3_MAC_GENERAL
		CKM_CAST5_CBC
		CKM_CAST5_CBC_PAD
		CKM_CAST5_ECB
		CKM_CAST5_KEY_GEN
		CKM_CAST5_MAC
		CKM_CAST5_MAC_GENERAL
		CKM_CAST_CBC
		CKM_CAST_CBC_PAD
		CKM_CAST_ECB
		CKM_CAST_KEY_GEN
		CKM_CAST_MAC
		CKM_CAST_MAC_GENERAL
		CKM_CDMF_CBC
		CKM_CDMF_CBC_PAD
		CKM_CDMF_ECB
		CKM_CDMF_KEY_GEN
		CKM_CDMF_MAC
		CKM_CDMF_MAC_GENERAL
		CKM_CMS_SIG
		CKM_CONCATENATE_BASE_AND_DATA
		CKM_CONCATENATE_BASE_AND_KEY
		CKM_CONCATENATE_DATA_AND_BASE
		CKM_DES2_KEY_GEN
		CKM_DES3_CBC
		CKM_DES3_CBC_ENCRYPT_DATA
		CKM_DES3_CBC_PAD
		CKM_DES3_ECB
		CKM_DES3_ECB_ENCRYPT_DATA
		CKM_DES3_KEY_GEN
		CKM_DES3_MAC
		CKM_DES3_MAC_GENERAL
		CKM_DES_CBC
		CKM_DES_CBC_ENCRYPT_DATA
		CKM_DES_CBC_PAD
		CKM_DES_CFB64
		CKM_DES_CFB8
		CKM_DES_ECB
		CKM_DES_ECB_ENCRYPT_DATA
		CKM_DES_KEY_GEN
		CKM_DES_MAC
		CKM_DES_MAC_GENERAL
		CKM_DES_OFB64
		CKM_DES_OFB8
		CKM_DH_PKCS_DERIVE
		CKM_DH_PKCS_KEY_PAIR_GEN
		CKM_DH_PKCS_PARAMETER_GEN
		CKM_DSA
		CKM_DSA_KEY_PAIR_GEN
		CKM_DSA_PARAMETER_GEN
		CKM_DSA_SHA1
		CKM_ECDH1_COFACTOR_DERIVE
		CKM_ECDH1_DERIVE
		CKM_ECDSA
		CKM_ECDSA_KEY_PAIR_GEN
		CKM_ECDSA_SHA1
		CKM_EC_KEY_PAIR_GEN
		CKM_ECMQV_DERIVE
		CKM_EXTRACT_KEY_FROM_KEY
		CKM_FASTHASH
		CKM_FORTEZZA_TIMESTAMP
		CKM_GENERIC_SECRET_KEY_GEN
		CKM_HOTP
		CKM_HOTP_KEY_GEN
		CKM_IDEA_CBC
		CKM_IDEA_CBC_PAD
		CKM_IDEA_ECB
		CKM_IDEA_KEY_GEN
		CKM_IDEA_MAC
		CKM_IDEA_MAC_GENERAL
		CKM_JUNIPER_CBC128
		CKM_JUNIPER_COUNTER
		CKM_JUNIPER_ECB128
		CKM_JUNIPER_KEY_GEN
		CKM_JUNIPER_SHUFFLE
		CKM_JUNIPER_WRAP
		CKM_KEA_KEY_DERIVE
		CKM_KEA_KEY_PAIR_GEN
		CKM_KEY_WRAP_LYNKS
		CKM_KEY_WRAP_SET_OAEP
		CKM_KIP_DERIVE
		CKM_KIP_MAC
		CKM_KIP_WRAP
		CKM_MD2
		CKM_MD2_HMAC
		CKM_MD2_HMAC_GENERAL
		CKM_MD2_KEY_DERIVATION
		CKM_MD2_RSA_PKCS
		CKM_MD5
		CKM_MD5_HMAC
		CKM_MD5_HMAC_GENERAL
		CKM_MD5_KEY_DERIVATION
		CKM_MD5_RSA_PKCS
		CKM_PBA_SHA1_WITH_SHA1_HMAC
		CKM_PBE_MD2_DES_CBC
		CKM_PBE_MD5_CAST128_CBC
		CKM_PBE_MD5_CAST3_CBC
		CKM_PBE_MD5_CAST5_CBC
		CKM_PBE_MD5_CAST_CBC
		CKM_PBE_MD5_DES_CBC
		CKM_PBE_SHA1_CAST128_CBC
		CKM_PBE_SHA1_CAST5_CBC
		CKM_PBE_SHA1_DES2_EDE_CBC
		CKM_PBE_SHA1_DES3_EDE_CBC
		CKM_PBE_SHA1_RC2_128_CBC
		CKM_PBE_SHA1_RC2_40_CBC
		CKM_PBE_SHA1_RC4_128
		CKM_PBE_SHA1_RC4_40
		CKM_PKCS5_PBKD2
		CKM_RC2_CBC
		CKM_RC2_CBC_PAD
		CKM_RC2_ECB
		CKM_RC2_KEY_GEN
		CKM_RC2_MAC
		CKM_RC2_MAC_GENERAL
		CKM_RC4
		CKM_RC4_KEY_GEN
		CKM_RC5_CBC
		CKM_RC5_CBC_PAD
		CKM_RC5_ECB
		CKM_RC5_KEY_GEN
		CKM_RC5_MAC
		CKM_RC5_MAC_GENERAL
		CKM_RIPEMD128
		CKM_RIPEMD128_HMAC
		CKM_RIPEMD128_HMAC_GENERAL
		CKM_RIPEMD128_RSA_PKCS
		CKM_RIPEMD160
		CKM_RIPEMD160_HMAC
		CKM_RIPEMD160_HMAC_GENERAL
		CKM_RIPEMD160_RSA_PKCS
		CKM_RSA_9796
		CKM_RSA_PKCS
		CKM_RSA_PKCS_KEY_PAIR_GEN
		CKM_RSA_PKCS_OAEP
		CKM_RSA_PKCS_PSS
		CKM_RSA_X_509
		CKM_RSA_X9_31
		CKM_RSA_X9_31_KEY_PAIR_GEN
		CKM_SECURID
		CKM_SECURID_KEY_GEN
		CKM_SHA_1
		CKM_SHA_1_HMAC
		CKM_SHA_1_HMAC_GENERAL
		CKM_SHA1_KEY_DERIVATION
		CKM_SHA1_RSA_PKCS
		CKM_SHA1_RSA_PKCS_PSS
		CKM_SHA1_RSA_X9_31
		CKM_SHA224
		CKM_SHA224_HMAC
		CKM_SHA224_HMAC_GENERAL
		CKM_SHA224_KEY_DERIVATION
		CKM_SHA224_RSA_PKCS
		CKM_SHA224_RSA_PKCS_PSS
		CKM_SHA256
		CKM_SHA256_HMAC
		CKM_SHA256_HMAC_GENERAL
		CKM_SHA256_KEY_DERIVATION
		CKM_SHA256_RSA_PKCS
		CKM_SHA256_RSA_PKCS_PSS
		CKM_SHA384
		CKM_SHA384_HMAC
		CKM_SHA384_HMAC_GENERAL
		CKM_SHA384_KEY_DERIVATION
		CKM_SHA384_RSA_PKCS
		CKM_SHA384_RSA_PKCS_PSS
		CKM_SHA512
		CKM_SHA512_HMAC
		CKM_SHA512_HMAC_GENERAL
		CKM_SHA512_KEY_DERIVATION
		CKM_SHA512_RSA_PKCS
		CKM_SHA512_RSA_PKCS_PSS
		CKM_SKIPJACK_CBC64
		CKM_SKIPJACK_CFB16
		CKM_SKIPJACK_CFB32
		CKM_SKIPJACK_CFB64
		CKM_SKIPJACK_CFB8
		CKM_SKIPJACK_ECB64
		CKM_SKIPJACK_KEY_GEN
		CKM_SKIPJACK_OFB64
		CKM_SKIPJACK_PRIVATE_WRAP
		CKM_SKIPJACK_RELAYX
		CKM_SKIPJACK_WRAP
		CKM_SSL3_KEY_AND_MAC_DERIVE
		CKM_SSL3_MASTER_KEY_DERIVE
		CKM_SSL3_MASTER_KEY_DERIVE_DH
		CKM_SSL3_MD5_MAC
		CKM_SSL3_PRE_MASTER_KEY_GEN
		CKM_SSL3_SHA1_MAC
		CKM_TLS_KEY_AND_MAC_DERIVE
		CKM_TLS_MASTER_KEY_DERIVE
		CKM_TLS_MASTER_KEY_DERIVE_DH
		CKM_TLS_PRE_MASTER_KEY_GEN
		CKM_TLS_PRF
		CKM_TWOFISH_CBC
		CKM_TWOFISH_KEY_GEN
		CKM_VENDOR_DEFINED
		CKM_WTLS_CLIENT_KEY_AND_MAC_DERIVE
		CKM_WTLS_MASTER_KEY_DERIVE
		CKM_WTLS_MASTER_KEY_DERIVE_DH_ECC
		CKM_WTLS_PRE_MASTER_KEY_GEN
		CKM_WTLS_PRF
		CKM_WTLS_SERVER_KEY_AND_MAC_DERIVE
		CKM_X9_42_DH_DERIVE
		CKM_X9_42_DH_HYBRID_DERIVE
		CKM_X9_42_DH_KEY_PAIR_GEN
		CKM_X9_42_DH_PARAMETER_GEN
		CKM_X9_42_MQV_DERIVE
		CKM_XOR_BASE_AND_DATA
	)],
	'notifications' => [qw(
		CKN_OTP_CHANGED
		CKN_SURRENDER
	)],
	'objects' => [qw(
		CKO_CERTIFICATE
		CKO_DATA
		CKO_DOMAIN_PARAMETERS
		CKO_HW_FEATURE
		CKO_MECHANISM
		CKO_OTP_KEY
		CKO_PRIVATE_KEY
		CKO_PUBLIC_KEY
		CKO_SECRET_KEY
		CKO_VENDOR_DEFINED
	)],
	'prfs' => [qw(
		CKP_PKCS5_PBKD2_HMAC_SHA1
	)],
	'return_codes' => [qw(
		CKR_ARGUMENTS_BAD
		CKR_ATTRIBUTE_READ_ONLY
		CKR_ATTRIBUTE_SENSITIVE
		CKR_ATTRIBUTE_TYPE_INVALID
		CKR_ATTRIBUTE_VALUE_INVALID
		CKR_BUFFER_TOO_SMALL
		CKR_CANCEL
		CKR_CANT_LOCK
		CKR_CRYPTOKI_ALREADY_INITIALIZED
		CKR_CRYPTOKI_NOT_INITIALIZED
		CKR_DATA_INVALID
		CKR_DATA_LEN_RANGE
		CKR_DEVICE_ERROR
		CKR_DEVICE_MEMORY
		CKR_DEVICE_REMOVED
		CKR_DOMAIN_PARAMS_INVALID
		CKR_ENCRYPTED_DATA_INVALID
		CKR_ENCRYPTED_DATA_LEN_RANGE
		CKR_FUNCTION_CANCELED
		CKR_FUNCTION_FAILED
		CKR_FUNCTION_NOT_PARALLEL
		CKR_FUNCTION_NOT_SUPPORTED
		CKR_FUNCTION_REJECTED
		CKR_GENERAL_ERROR
		CKR_HOST_MEMORY
		CKR_INFORMATION_SENSITIVE
		CKR_KEY_CHANGED
		CKR_KEY_FUNCTION_NOT_PERMITTED
		CKR_KEY_HANDLE_INVALID
		CKR_KEY_INDIGESTIBLE
		CKR_KEY_NEEDED
		CKR_KEY_NOT_NEEDED
		CKR_KEY_NOT_WRAPPABLE
		CKR_KEY_SIZE_RANGE
		CKR_KEY_TYPE_INCONSISTENT
		CKR_KEY_UNEXTRACTABLE
		CKR_MECHANISM_INVALID
		CKR_MECHANISM_PARAM_INVALID
		CKR_MUTEX_BAD
		CKR_MUTEX_NOT_LOCKED
		CKR_NEED_TO_CREATE_THREADS
		CKR_NEW_PIN_MODE
		CKR_NEXT_OTP
		CKR_NO_EVENT
		CKR_OBJECT_HANDLE_INVALID
		CKR_OK
		CKR_OPERATION_ACTIVE
		CKR_OPERATION_NOT_INITIALIZED
		CKR_PIN_EXPIRED
		CKR_PIN_INCORRECT
		CKR_PIN_INVALID
		CKR_PIN_LEN_RANGE
		CKR_PIN_LOCKED
		CKR_RANDOM_NO_RNG
		CKR_RANDOM_SEED_NOT_SUPPORTED
		CKR_SAVED_STATE_INVALID
		CKR_SESSION_CLOSED
		CKR_SESSION_COUNT
		CKR_SESSION_EXISTS
		CKR_SESSION_HANDLE_INVALID
		CKR_SESSION_PARALLEL_NOT_SUPPORTED
		CKR_SESSION_READ_ONLY
		CKR_SESSION_READ_ONLY_EXISTS
		CKR_SESSION_READ_WRITE_SO_EXISTS
		CKR_SIGNATURE_INVALID
		CKR_SIGNATURE_LEN_RANGE
		CKR_SLOT_ID_INVALID
		CKR_STATE_UNSAVEABLE
		CKR_TEMPLATE_INCOMPLETE
		CKR_TEMPLATE_INCONSISTENT
		CKR_TOKEN_NOT_PRESENT
		CKR_TOKEN_NOT_RECOGNIZED
		CKR_TOKEN_WRITE_PROTECTED
		CKR_UNWRAPPING_KEY_HANDLE_INVALID
		CKR_UNWRAPPING_KEY_SIZE_RANGE
		CKR_UNWRAPPING_KEY_TYPE_INCONSISTENT
		CKR_USER_ALREADY_LOGGED_IN
		CKR_USER_ANOTHER_ALREADY_LOGGED_IN
		CKR_USER_NOT_LOGGED_IN
		CKR_USER_PIN_NOT_INITIALIZED
		CKR_USER_TOO_MANY_TYPES
		CKR_USER_TYPE_INVALID
		CKR_VENDOR_DEFINED
		CKR_WRAPPED_KEY_INVALID
		CKR_WRAPPED_KEY_LEN_RANGE
		CKR_WRAPPING_KEY_HANDLE_INVALID
		CKR_WRAPPING_KEY_SIZE_RANGE
		CKR_WRAPPING_KEY_TYPE_INCONSISTENT
	)],
	'states' => [qw(
		CKS_RO_PUBLIC_SESSION
		CKS_RO_USER_FUNCTIONS
		CKS_RW_PUBLIC_SESSION
		CKS_RW_SO_FUNCTIONS
		CKS_RW_USER_FUNCTIONS
	)],
	'roles' => [qw(
		CKU_CONTEXT_SPECIFIC
		CKU_SO
		CKU_USER
	)],
	'salt_sources' => [qw(
		CKZ_DATA_SPECIFIED
		CKZ_SALT_SPECIFIED
	)]
);

$EXPORT_TAGS{all} = [
	@{$EXPORT_TAGS{helper}},
	@{$EXPORT_TAGS{attributes}},
	@{$EXPORT_TAGS{certificates}},
	@{$EXPORT_TAGS{flags}},
	@{$EXPORT_TAGS{key_types}},
	@{$EXPORT_TAGS{mechanisms}},
	@{$EXPORT_TAGS{return_codes}},
	@{$EXPORT_TAGS{roles}},
	@{$EXPORT_TAGS{objects}},
	@{$EXPORT_TAGS{return_codes}},
	@{$EXPORT_TAGS{states}},
];

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "&Crypt::Cryptoki::Constant::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
		no strict 'refs';
	    *$AUTOLOAD = sub { $val };
    }
    goto &$AUTOLOAD;
}

require XSLoader;
XSLoader::load('Crypt::Cryptoki::Constant');

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

my %rv_map;
{
	no strict 'refs';
	%rv_map = map { $_->() => $_ } grep { /^CKR/ } @EXPORT_OK;
}

sub rv_to_str {
	my ( $err_num ) = @_;
	return $rv_map{$err_num} || 'n/a ('.$err_num.')';
}

1;
__END__
=head1 NAME

Crypt::Cryptoki::Constant - PKCS#11 constants

=head1 SYNOPSIS

	use Crypt::Cryptoki::Constant qw(:all);

	is(CKR_OK, 0, 'CKR_OK');
	
	(see also: t/constant.t)


=head1 DESCRIPTION

Crypt::Cryptoki::Constant can export all Cryptoki constants. These are organized by export tags.

=head2 FUNCTIONS

=head3 rv_to_str
	
Maps return codes (CKR_*) to the name of the constant

	print "function returned: ", rv_to_str(CKR_OK), "\n";

=head2 EXPORT

None by default.

=head2 Exportable constants

	certificates (CKC_*)
	derivations (CKD_*)
	return_codes (CKR_*) 
	flags (CKF_*) 
	roles (CKU_*) 
	objects (CKO_*)
	key_types (CKK_*)
	states (CKS_*)
	attributes (CKA_*)
	mechanisms (CKM_*)
	helper (rv_to_str)
	all

=head1 SEE ALSO

L<Crypt::Cryptoki>, L<Crypt::Cryptoki::Raw> 

=head1 AUTHOR

Markus Lauer, E<lt>mlarue@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Markus Lauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.12.5 or,
at your option, any later version of Perl 5 you may have available.


=cut