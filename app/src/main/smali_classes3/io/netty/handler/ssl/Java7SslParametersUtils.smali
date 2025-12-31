.class final Lio/netty/handler/ssl/Java7SslParametersUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAlgorithmConstraints(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lio/netty/channel/socket/nio/a;->f(Ljava/lang/Object;)Ljava/security/AlgorithmConstraints;

    move-result-object p1

    invoke-static {p0, p1}, Lio/netty/channel/socket/nio/a;->s(Ljavax/net/ssl/SSLParameters;Ljava/security/AlgorithmConstraints;)V

    return-void
.end method
