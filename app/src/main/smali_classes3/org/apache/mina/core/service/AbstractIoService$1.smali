.class Lorg/apache/mina/core/service/AbstractIoService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoService;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService$1;->this$0:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 3

    check-cast p1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastReadTime(J)V

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastWriteTime(J)V

    invoke-virtual {p1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastThroughputCalculationTime(J)V

    return-void
.end method

.method public serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 0

    return-void
.end method

.method public serviceIdle(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method

.method public sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method
