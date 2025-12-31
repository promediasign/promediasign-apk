.class public abstract Lcom/dropbox/core/http/SSLConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/SSLConfig$LoadException;,
        Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;,
        Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;
    }
.end annotation


# static fields
.field private static final ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

.field private static final PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

.field private static final PROTOCOL_LIST_TLS_V1_1:[Ljava/lang/String;

.field private static final PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

.field private static final SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static final TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 58

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->createTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    const-string v0, "TLSv1.2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

    const-string v0, "TLSv1.1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_1:[Ljava/lang/String;

    const-string v0, "TLSv1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const-string v56, "AES128-SHA256"

    const-string v57, "AES128-SHA"

    const-string v1, "SSL_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v2, "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v3, "SSL_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v4, "SSL_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v5, "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v6, "SSL_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v7, "SSL_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v8, "SSL_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v9, "SSL_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v10, "SSL_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v11, "SSL_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v12, "SSL_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v13, "SSL_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v14, "SSL_RSA_WITH_AES_256_GCM_SHA384"

    const-string v15, "SSL_RSA_WITH_AES_256_CBC_SHA256"

    const-string v16, "SSL_RSA_WITH_AES_256_CBC_SHA"

    const-string v17, "SSL_RSA_WITH_AES_128_GCM_SHA256"

    const-string v18, "SSL_RSA_WITH_AES_128_CBC_SHA256"

    const-string v19, "SSL_RSA_WITH_AES_128_CBC_SHA"

    const-string v20, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v21, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v22, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v23, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v24, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v25, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v26, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v27, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v28, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v29, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v30, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v31, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v32, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v33, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v34, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const-string v35, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v36, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v37, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const-string v38, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v39, "ECDHE-RSA-AES256-GCM-SHA384"

    const-string v40, "ECDHE-RSA-AES256-SHA384"

    const-string v41, "ECDHE-RSA-AES256-SHA"

    const-string v42, "ECDHE-RSA-AES128-GCM-SHA256"

    const-string v43, "ECDHE-RSA-AES128-SHA256"

    const-string v44, "ECDHE-RSA-AES128-SHA"

    const-string v45, "ECDHE-RSA-RC4-SHA"

    const-string v46, "DHE-RSA-AES256-GCM-SHA384"

    const-string v47, "DHE-RSA-AES256-SHA256"

    const-string v48, "DHE-RSA-AES256-SHA"

    const-string v49, "DHE-RSA-AES128-GCM-SHA256"

    const-string v50, "DHE-RSA-AES128-SHA256"

    const-string v51, "DHE-RSA-AES128-SHA"

    const-string v52, "AES256-GCM-SHA384"

    const-string v53, "AES256-SHA256"

    const-string v54, "AES256-SHA"

    const-string v55, "AES128-GCM-SHA256"

    filled-new-array/range {v1 .. v57}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    return-void
.end method

.method public static synthetic access$200(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    invoke-static {p0}, Lcom/dropbox/core/http/SSLConfig;->limitProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method public static apply(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private static createSSLContext([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;
    .locals 2

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1, p0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "Couldn\'t initialize SSLContext"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "Couldn\'t create SSLContext"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->createSSLContext([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    new-instance v1, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dropbox/core/http/SSLConfig$SSLSocketFactoryWrapper;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v1
.end method

.method private static createTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 1
    const-string v0, "/com/dropbox/core/trusted-certs.raw"

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->loadKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method private static createTrustManager(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 2
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v1, p0, v0

    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TrustManager not of type X509: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "More than 1 TrustManager created."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :catch_0
    move-exception p0

    const-string v0, "Unable to initialize TrustManagerFactory with key store"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    const-string v0, "Unable to create TrustManagerFactory"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static deserializeCertificates(Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertificateFactory;",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/DataInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x2800

    .line 12
    .line 13
    new-array v2, p1, [B

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-gez p0, :cond_0

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance p0, Lcom/dropbox/core/http/SSLConfig$LoadException;

    .line 30
    .line 31
    const-string p1, "Found data after after zero-length header."

    .line 32
    .line 33
    invoke-direct {p0, p1, v4}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    if-gt v3, p1, :cond_2

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 41
    .line 42
    .line 43
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 44
    .line 45
    invoke-direct {v5, v2, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance p0, Lcom/dropbox/core/http/SSLConfig$LoadException;

    .line 59
    .line 60
    const-string p1, "Invalid length for certificate entry: "

    .line 61
    .line 62
    invoke-static {v3, p1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1, v4}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method private static getFilteredCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->access$000(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;->access$100(Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    sget-object v4, Lcom/dropbox/core/http/SSLConfig;->ALLOWED_CIPHER_SUITES:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/dropbox/core/http/SSLConfig;->CACHED_CIPHER_SUITE_FILTERATION_RESULTS:Lcom/dropbox/core/http/SSLConfig$CipherSuiteFilterationResults;

    return-object v0
.end method

.method private static getFilteredProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    aget-object v5, p0, v1

    .line 9
    .line 10
    const-string v6, "TLSv1.2"

    .line 11
    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v7, 0x1

    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string v6, "TLSv1.1"

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v6, "TLSv1"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    if-eqz v2, :cond_4

    .line 44
    .line 45
    sget-object p0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_2:[Ljava/lang/String;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_4
    if-eqz v3, :cond_5

    .line 49
    .line 50
    sget-object p0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1_1:[Ljava/lang/String;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_5
    if-eqz v4, :cond_6

    .line 54
    .line 55
    sget-object p0, Lcom/dropbox/core/http/SSLConfig;->PROTOCOL_LIST_TLS_V1:[Ljava/lang/String;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_6
    new-instance v0, Ljavax/net/ssl/SSLException;

    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "Socket\'s available protocols doesn\'t overlap with our allowed protocols: "

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->jq([Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string v2, "."

    .line 72
    .line 73
    invoke-static {p0, v2, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    sget-object v0, Lcom/dropbox/core/http/SSLConfig;->TRUST_MANAGER:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method private static limitProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->getFilteredProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/SSLConfig;->getFilteredCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method private static loadKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5

    const-string v0, "Couldn\'t initialize KeyStore"

    const-string v1, "Error loading from \""

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [C

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const-class v0, Lcom/dropbox/core/http/SSLConfig;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "\""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v2, v0}, Lcom/dropbox/core/http/SSLConfig;->loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/dropbox/core/http/SSLConfig$LoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw p0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Couldn\'t find resource \""

    .line 1
    invoke-static {v1, p0, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_2

    :catch_5
    move-exception p0

    goto :goto_3

    :catch_6
    move-exception p0

    goto :goto_4

    :goto_1
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_2
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_3
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :goto_4
    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static loadKeyStore(Ljava/security/KeyStore;Ljava/io/InputStream;)V
    .locals 3

    .line 8
    const-string v0, "Error loading certificate: "

    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v1, p1}, Lcom/dropbox/core/http/SSLConfig;->deserializeCertificates(Ljava/security/cert/CertificateFactory;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_2
    invoke-virtual {p0, v2, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lcom/dropbox/core/http/SSLConfig$LoadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/dropbox/core/http/SSLConfig$LoadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    const-string p1, "Couldn\'t initialize X.509 CertificateFactory"

    invoke-static {p1, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
