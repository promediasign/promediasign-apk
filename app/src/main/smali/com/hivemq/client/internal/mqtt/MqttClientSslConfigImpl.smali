.class public Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

.field static final DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private final cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeTimeoutMs:I

.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

.field private final protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    :try_start_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    invoke-static {v0}, LA/c;->r(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    goto :goto_0

    :goto_1
    sput-object v7, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    new-instance v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x2710

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;-><init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjavax/net/ssl/HostnameVerifier;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->DEFAULT:Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;Ljavax/net/ssl/TrustManagerFactory;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;ILjavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iput p5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iget-object v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    iget v3, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object p1, p1, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHandshakeTimeoutMs()J
    .locals 2

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRawCipherSuites()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getRawHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getRawKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    return-object v0
.end method

.method public getRawProtocols()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getRawTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->keyManagerFactory:Ljavax/net/ssl/KeyManagerFactory;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->trustManagerFactory:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->cipherSuites:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->protocols:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->handshakeTimeoutMs:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
