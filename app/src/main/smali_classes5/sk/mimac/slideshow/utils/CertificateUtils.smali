.class public abstract Lsk/mimac/slideshow/utils/CertificateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/utils/CertificateUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/utils/CertificateUtils;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static synthetic a(Ljavax/net/ssl/SSLServerSocketFactory;)Ljava/net/ServerSocket;
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/utils/CertificateUtils;->lambda$getServerSocketFactory$0(Ljavax/net/ssl/SSLServerSocketFactory;)Ljava/net/ServerSocket;

    move-result-object p0

    return-object p0
.end method

.method public static checkCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/CertificateUtils;->loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    invoke-static {p0, p1}, Lsk/mimac/slideshow/utils/CertificateUtils;->getKeyManagerFactory(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    const-string p1, "TLS"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkCertificate()Z
    .locals 4

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getHttpsCertPassword()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getHttpsCertPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsk/mimac/slideshow/utils/CertificateUtils;->checkCertificate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lsk/mimac/slideshow/utils/CertificateUtils;->LOG:Lorg/slf4j/Logger;

    const-string v3, "HTTPS certificate check failed: {}"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static generateCertificate()V
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/utils/CertificateUtils;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Generating HTTPS certificate"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x84

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0x46

    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->add(II)V

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    const/16 v5, 0x800

    invoke-virtual {v4, v5, v1}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v11

    new-instance v9, Lorg/spongycastle/asn1/x500/X500Name;

    const-string v4, "CN=Promedia Sign"

    invoke-direct {v9, v4}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    new-instance v4, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v4}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    const-string v5, "SHA256withRSA"

    invoke-virtual {v4, v5}, Lorg/spongycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v5}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v5, v4}, Lorg/spongycastle/operator/DefaultDigestAlgorithmIdentifierFinder;->find(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v11}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/util/PrivateKeyFactory;->createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    new-instance v7, Lorg/spongycastle/operator/bc/BcRSAContentSignerBuilder;

    invoke-direct {v7, v4, v5}, Lorg/spongycastle/operator/bc/BcRSAContentSignerBuilder;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v7, v6}, Lorg/spongycastle/operator/bc/BcContentSignerBuilder;->build(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/operator/ContentSigner;

    move-result-object v12

    new-instance v13, Lorg/spongycastle/cert/X509v1CertificateBuilder;

    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0xfa

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object v3, v13

    move-object v4, v9

    invoke-direct/range {v3 .. v10}, Lorg/spongycastle/cert/X509v1CertificateBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Ljava/util/Locale;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-virtual {v13, v12}, Lorg/spongycastle/cert/X509v1CertificateBuilder;->build(Lorg/spongycastle/operator/ContentSigner;)Lorg/spongycastle/cert/X509CertificateHolder;

    move-result-object v1

    new-instance v3, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v3}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    invoke-virtual {v3, v1}, Lorg/spongycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/spongycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v4, "mykey"

    invoke-virtual {v11}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    new-array v0, v0, [Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-static {v2}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/settings/SystemSettings;->setHttpsCertPassword(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/utils/CertificateUtils;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t generate HTTPS certificate"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private static getKeyManagerFactory(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    return-object v0
.end method

.method public static getServerSocketFactory()Lfi/iki/elonen/NanoHTTPD$ServerSocketFactory;
    .locals 3

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getHttpsCertPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CERTIFICATE_FILE:Ljava/lang/String;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/utils/CertificateUtils;->loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {v1, v0}, Lsk/mimac/slideshow/utils/CertificateUtils;->getKeyManagerFactory(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    new-instance v1, LD/j;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, LD/j;-><init>(Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static synthetic lambda$getServerSocketFactory$0(Ljavax/net/ssl/SSLServerSocketFactory;)Ljava/net/ServerSocket;
    .locals 5

    invoke-virtual {p0}, Ljavax/net/ServerSocketFactory;->createServerSocket()Ljava/net/ServerSocket;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLServerSocket;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setUseClientMode(Z)V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setWantClientAuth(Z)V

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DISABLE_NON_SSL_INTERFACES:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljavax/net/ssl/SSLServerSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string v2, "TLSv1"

    const-string v3, "TLSv1.1"

    const-string v4, "SSLv3"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static loadKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 2

    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
