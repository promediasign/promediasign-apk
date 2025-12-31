.class public Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;
.super Lorg/apache/mina/filter/logging/LoggingFilter;
.source "SourceFile"


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private maskPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/logging/LoggingFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public isMaskPassword()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PASS "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "PASS *****"

    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->logger:Lorg/slf4j/Logger;

    const-string v2, "RECEIVED: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;->maskPassword:Z

    return-void
.end method
