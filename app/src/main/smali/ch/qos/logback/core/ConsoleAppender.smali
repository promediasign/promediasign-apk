.class public Lch/qos/logback/core/ConsoleAppender;
.super Lch/qos/logback/core/OutputStreamAppender;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/OutputStreamAppender<",
        "TE;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected target:Lch/qos/logback/core/joran/spi/ConsoleTarget;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/OutputStreamAppender;-><init>()V

    sget-object v0, Lch/qos/logback/core/joran/spi/ConsoleTarget;->SystemOut:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    iput-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    return-void
.end method

.method private targetWarn(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lch/qos/logback/core/status/WarnStatus;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    const-string v2, "] should be one of "

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->values()[Lch/qos/logback/core/joran/spi/ConsoleTarget;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lch/qos/logback/core/status/WarnStatus;

    .line 30
    .line 31
    const-string v1, "Using previously set target, System.out by default."

    .line 32
    .line 33
    invoke-direct {p1, v1, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1}, Lch/qos/logback/core/status/Status;->add(Lch/qos/logback/core/status/Status;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/ContextAwareBase;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->findByName(Ljava/lang/String;)Lch/qos/logback/core/joran/spi/ConsoleTarget;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lch/qos/logback/core/ConsoleAppender;->targetWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/ConsoleAppender;->target:Lch/qos/logback/core/joran/spi/ConsoleTarget;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ConsoleTarget;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->setOutputStream(Ljava/io/OutputStream;)V

    invoke-super {p0}, Lch/qos/logback/core/OutputStreamAppender;->start()V

    return-void
.end method
