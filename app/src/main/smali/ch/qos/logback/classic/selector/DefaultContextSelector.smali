.class public Lch/qos/logback/classic/selector/DefaultContextSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch/qos/logback/classic/selector/ContextSelector;


# instance fields
.field private defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-void
.end method


# virtual methods
.method public detachLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 0

    iget-object p1, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object p1
.end method

.method public getContextNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/core/ContextBase;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object v0
.end method

.method public getLoggerContext()Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lch/qos/logback/classic/selector/DefaultContextSelector;->getDefaultLoggerContext()Lch/qos/logback/classic/LoggerContext;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerContext(Ljava/lang/String;)Lch/qos/logback/classic/LoggerContext;
    .locals 1

    .line 2
    iget-object v0, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v0}, Lch/qos/logback/core/ContextBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lch/qos/logback/classic/selector/DefaultContextSelector;->defaultLoggerContext:Lch/qos/logback/classic/LoggerContext;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
