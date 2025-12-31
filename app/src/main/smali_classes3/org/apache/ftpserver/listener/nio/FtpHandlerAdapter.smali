.class public Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoHandler;


# instance fields
.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    iput-object p2, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p1, v0, p2}, Lorg/apache/ftpserver/impl/FtpHandler;->exceptionCaught(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getFtpHandler()Lorg/apache/ftpserver/impl/FtpHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    new-instance p1, Lorg/apache/ftpserver/impl/DefaultFtpRequest;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ftpserver/impl/DefaultFtpRequest;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p2, v0, p1}, Lorg/apache/ftpserver/impl/FtpHandler;->messageReceived(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    check-cast p2, Lorg/apache/ftpserver/ftplet/FtpReply;

    invoke-interface {p1, v0, p2}, Lorg/apache/ftpserver/impl/FtpHandler;->messageSent(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpReply;)V

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionClosed(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getSessionId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "session"

    invoke-static {p1, v2, v1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionCreated(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p1, v0, p2}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionIdle(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {p1, v0}, Lorg/apache/ftpserver/impl/FtpHandler;->sessionOpened(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    return-void
.end method

.method public setFtpHandler(Lorg/apache/ftpserver/impl/FtpHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;->ftpHandler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-void
.end method
