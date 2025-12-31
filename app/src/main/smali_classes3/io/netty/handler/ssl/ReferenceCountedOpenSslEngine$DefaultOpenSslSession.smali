.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/OpenSslSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultOpenSslSession"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile applicationBufferSize:I

.field private cipher:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private peerCerts:[Ljava/security/cert/Certificate;

.field private protocol:Ljava/lang/String;

.field private final sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

.field final synthetic this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x509PeerCerts:[Ljavax/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/OpenSslSessionContext;)V
    .locals 0

    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    iput p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-void
.end method

.method private initCerts([[BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    new-instance v3, Lio/netty/handler/ssl/OpenSslX509Certificate;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    new-instance v3, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initPeerCerts()V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getPeerCertChain(J)[[B

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$200(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    array-length v0, v1

    new-array v0, v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    array-length v0, v1

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    invoke-direct {p0, v1, v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initCerts([[BI)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/netty/internal/tcnative/SSL;->getPeerCertificate(J)[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1400([B)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_CERTIFICATES:[Ljava/security/cert/Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_JAVAX_X509_CERTIFICATES:[Ljavax/security/cert/X509Certificate;

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Lio/netty/handler/ssl/OpenSslX509Certificate;

    invoke-direct {v1, v2}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    new-array v4, v0, [Ljava/security/cert/Certificate;

    aput-object v1, v4, v3

    iput-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    new-instance v1, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    invoke-direct {v1, v2}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    aput-object v1, v0, v3

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    goto :goto_0

    :cond_3
    array-length v4, v1

    add-int/2addr v4, v0

    new-array v4, v4, [Ljava/security/cert/Certificate;

    iput-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    array-length v5, v1

    add-int/2addr v5, v0

    new-array v5, v5, [Ljavax/security/cert/X509Certificate;

    iput-object v5, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    new-instance v5, Lio/netty/handler/ssl/OpenSslX509Certificate;

    invoke-direct {v5, v2}, Lio/netty/handler/ssl/OpenSslX509Certificate;-><init>([B)V

    aput-object v5, v4, v3

    iget-object v4, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    new-instance v5, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;

    invoke-direct {v5, v2}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;-><init>([B)V

    aput-object v5, v4, v3

    invoke-direct {p0, v1, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initCerts([[BI)V

    :goto_0
    return-void
.end method

.method private newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;
    .locals 2

    new-instance v0, Ljavax/net/ssl/SSLSessionBindingEvent;

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$800(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslSession;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_0
    return-void
.end method

.method private selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v0, :cond_0

    return-object p3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p3

    :cond_1
    sget-object v1, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->CHOOSE_MY_LAST_PROTOCOL:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    if-ne p2, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string p2, "unknown protocol "

    .line 1
    invoke-static {p2, p3}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private selectApplicationProtocol()V
    .locals 4

    .line 7
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->selectedListenerFailureBehavior()Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocols()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$4;->$SwitchMap$io$netty$handler$ssl$ApplicationProtocolConfig$Protocol:[I

    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/handler/ssl/OpenSslApplicationProtocolNegotiator;->protocol()Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_4

    :goto_0
    iget-object v3, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-direct {p0, v1, v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol(Ljava/util/List;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1602(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    :cond_2
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getNextProtoNegotiated(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getAlpnSelected(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    iget v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->cipher:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCreationTime()J
    .locals 6

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->creationTime:J

    return-wide v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getId()[B
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->id:[B

    if-nez v1, :cond_0

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastAccessedTime()J
    .locals 5

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$900(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->getCreationTime()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1700(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->maxEncryptedPacketLength()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->x509PeerCerts:[Ljavax/security/cert/X509Certificate;

    invoke-virtual {v1}, [Ljavax/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/security/cert/X509Certificate;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1300([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->peerCerts:[Ljava/security/cert/Certificate;

    invoke-virtual {v1}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v2, "peer not verified"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    invoke-virtual {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->protocol:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, ""

    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->sessionContext:Lio/netty/handler/ssl/OpenSslSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handshakeFinished()V
    .locals 4

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getSessionId(J)[B

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->id:[B

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/internal/tcnative/SSL;->getCipherForSSL(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1000(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->cipher:Ljava/lang/String;

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSL;->getVersion(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->protocol:Ljava/lang/String;

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->initPeerCerts()V

    invoke-direct {p0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->selectApplicationProtocol()V

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1100(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)V

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    sget-object v2, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-static {v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1202(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "Already closed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public invalidate()V
    .locals 5

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lio/netty/internal/tcnative/SSL;->setTimeout(JJ)J

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isValid()Z
    .locals 9

    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$400(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->getTimeout(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->this$0:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    invoke-static {v1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$500(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/internal/tcnative/SSL;->getTime(J)J

    move-result-wide v5

    mul-long v5, v5, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_1

    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->newSSLSessionBindingEvent(Ljava/lang/String;)Ljavax/net/ssl/SSLSessionBindingEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    :cond_1
    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->notifyUnbound(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public tryExpandApplicationBufferSize(I)V
    .locals 1

    sget v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->MAX_PLAINTEXT_LENGTH:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1800()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->access$1800()I

    move-result p1

    iput p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$DefaultOpenSslSession;->applicationBufferSize:I

    :cond_0
    return-void
.end method
