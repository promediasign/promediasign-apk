.class public Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;
.super Ljavax/net/ssl/TrustManagerFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;
    }
.end annotation


# static fields
.field private static final X509:Ljavax/net/ssl/X509TrustManager;

.field private static final X509_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$2;

    invoke-direct {v0}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$2;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509:Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$BogusTrustManagerFactorySpi;-><init>(Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;)V

    new-instance v1, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, ""

    const-string v5, "MinaBogus"

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-direct {p0, v0, v1, v5}, Ljavax/net/ssl/TrustManagerFactory;-><init>(Ljavax/net/ssl/TrustManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()[Ljavax/net/ssl/TrustManager;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/ssl/BogusTrustManagerFactory;->X509_MANAGERS:[Ljavax/net/ssl/TrustManager;

    return-object v0
.end method
