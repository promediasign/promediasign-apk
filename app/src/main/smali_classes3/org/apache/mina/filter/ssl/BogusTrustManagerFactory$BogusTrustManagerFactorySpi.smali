.class Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BogusTrustManagerFactorySpi"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    invoke-static {}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->access$100()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 0

    .line 1
    return-void
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0

    .line 2
    return-void
.end method
