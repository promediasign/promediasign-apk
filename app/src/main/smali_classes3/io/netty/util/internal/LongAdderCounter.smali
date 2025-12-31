.class final Lio/netty/util/internal/LongAdderCounter;
.super Ljava/util/concurrent/atomic/LongAdder;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/internal/LongCounter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    return-void
.end method


# virtual methods
.method public value()J
    .locals 2

    invoke-static {p0}, Lch/qos/logback/core/joran/util/a;->c(Lio/netty/util/internal/LongAdderCounter;)J

    move-result-wide v0

    return-wide v0
.end method
