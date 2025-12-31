.class public Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCRYPTION_DSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final ENCRYPTION_ECDSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final ENCRYPTION_ECGOST3410:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final ENCRYPTION_GOST3410:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final ENCRYPTION_RSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static final ENCRYPTION_RSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private static algorithms:Ljava/util/Map;

.field private static digestOids:Ljava/util/Map;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Map;

.field private static pkcs15RsaEncryption:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_RSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_DSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_ECDSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_RSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_GOST3410:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->ENCRYPTION_ECGOST3410:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "MD2WITHRSAENCRYPTION"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v5, "MD2WITHRSA"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v5, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "MD5WITHRSAENCRYPTION"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v6, "MD5WITHRSA"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA1WITHRSAENCRYPTION"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA1WITHRSA"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v7, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA224WITHRSAENCRYPTION"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v8, "SHA224WITHRSA"

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v8, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA256WITHRSAENCRYPTION"

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v9, "SHA256WITHRSA"

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA384WITHRSAENCRYPTION"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v10, "SHA384WITHRSA"

    invoke-interface {v3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v10, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "SHA512WITHRSAENCRYPTION"

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v11, "SHA512WITHRSA"

    invoke-interface {v3, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v11, "SHA1WITHRSAANDMGF1"

    invoke-interface {v3, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v12, "SHA224WITHRSAANDMGF1"

    invoke-interface {v3, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v13, "SHA256WITHRSAANDMGF1"

    invoke-interface {v3, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v14, "SHA384WITHRSAANDMGF1"

    invoke-interface {v3, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v15, "SHA512WITHRSAANDMGF1"

    invoke-interface {v3, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v3, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v5

    const-string v5, "RIPEMD160WITHRSAENCRYPTION"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v5, "RIPEMD160WITHRSA"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v5, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v4

    const-string v4, "RIPEMD128WITHRSAENCRYPTION"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v4, "RIPEMD128WITHRSA"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v4, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v15

    const-string v15, "RIPEMD256WITHRSAENCRYPTION"

    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v15, "RIPEMD256WITHRSA"

    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v15, "SHA1WITHDSA"

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v15, "DSAWITHSHA1"

    invoke-interface {v2, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v15, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v14

    const-string v14, "SHA224WITHDSA"

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v14, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v13

    const-string v13, "SHA256WITHDSA"

    invoke-interface {v2, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v13, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v12

    const-string v12, "SHA384WITHDSA"

    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v12, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v11

    const-string v11, "SHA512WITHDSA"

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v11, "SHA1WITHECDSA"

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v11, "ECDSAWITHSHA1"

    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v11, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v4

    const-string v4, "SHA224WITHECDSA"

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v4, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v24, v3

    const-string v3, "SHA256WITHECDSA"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v25, v5

    const-string v5, "SHA384WITHECDSA"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v5, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v10

    const-string v10, "SHA512WITHECDSA"

    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v10, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v9

    const-string v9, "GOST3411WITHGOST3410"

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v9, "GOST3411WITHGOST3410-94"

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    sget-object v9, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v28, v8

    const-string v8, "GOST3411WITHECGOST3410"

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v8, "GOST3411WITHECGOST3410-2001"

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v8, "GOST3411WITHGOST3410-2001"

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v8, "SHA1WITHPLAIN-ECDSA"

    move-object/from16 v29, v7

    sget-object v7, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA224WITHPLAIN-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA256WITHPLAIN-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA384WITHPLAIN-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA512WITHPLAIN-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA1WITHCVC-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA224WITHCVC-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA256WITHCVC-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA384WITHCVC-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    const-string v7, "SHA512WITHCVC-ECDSA"

    sget-object v8, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v2, v28

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v3, v27

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v4, v26

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v5, v25

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v7, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    move-object/from16 v8, v23

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v11, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v12, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v11, v12}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sget-object v13, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    const/16 v14, 0x14

    invoke-static {v0, v14}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v14, v22

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v13, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v13, v12}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sget-object v14, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    const/16 v15, 0x1c

    invoke-static {v0, v15}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v15, v21

    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v14, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v14, v12}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sget-object v15, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    move-object/from16 v21, v9

    const/16 v9, 0x20

    invoke-static {v0, v9}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v9, v20

    invoke-interface {v15, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v9, v12}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sget-object v15, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    move-object/from16 v20, v10

    const/16 v10, 0x30

    invoke-static {v0, v10}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v10, v19

    invoke-interface {v15, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v10, v12}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sget-object v12, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    const/16 v15, 0x40

    invoke-static {v0, v15}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    move-object/from16 v15, v18

    invoke-interface {v12, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v16

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v2, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPSSParams(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance p1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x1

    invoke-direct {p1, v3, v4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V

    return-object v0
.end method

.method private static generate(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    .line 39
    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 46
    .line 47
    invoke-direct {v1, v0, p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 48
    .line 49
    .line 50
    move-object p0, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance p0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    .line 54
    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    .line 55
    .line 56
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    sget-object v1, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    .line 69
    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    .line 71
    sget-object v3, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    .line 72
    .line 73
    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 99
    .line 100
    sget-object v2, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    .line 101
    .line 102
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    .line 108
    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    .line 109
    .line 110
    invoke-direct {v1, v0, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-object p0

    .line 114
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v1, "Unknown signature type requested: "

    .line 117
    .line 118
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->generate(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    return-object p1
.end method
