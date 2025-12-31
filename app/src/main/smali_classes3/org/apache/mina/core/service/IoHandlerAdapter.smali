.class public Lorg/apache/mina/core/service/IoHandlerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoHandler;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/core/service/IoHandlerAdapter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/service/IoHandlerAdapter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p1, Lorg/apache/mina/core/service/IoHandlerAdapter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXCEPTION, please implement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".exceptionCaught() for proper handling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method
