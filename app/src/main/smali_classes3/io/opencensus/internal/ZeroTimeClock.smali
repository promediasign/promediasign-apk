.class public final Lio/opencensus/internal/ZeroTimeClock;
.super Lio/opencensus/common/Clock;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lio/opencensus/internal/ZeroTimeClock;

.field private static final ZERO_TIMESTAMP:Lio/opencensus/common/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/opencensus/internal/ZeroTimeClock;

    invoke-direct {v0}, Lio/opencensus/internal/ZeroTimeClock;-><init>()V

    sput-object v0, Lio/opencensus/internal/ZeroTimeClock;->INSTANCE:Lio/opencensus/internal/ZeroTimeClock;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/opencensus/common/Timestamp;->create(JI)Lio/opencensus/common/Timestamp;

    move-result-object v0

    sput-object v0, Lio/opencensus/internal/ZeroTimeClock;->ZERO_TIMESTAMP:Lio/opencensus/common/Timestamp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/common/Clock;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/opencensus/internal/ZeroTimeClock;
    .locals 1

    sget-object v0, Lio/opencensus/internal/ZeroTimeClock;->INSTANCE:Lio/opencensus/internal/ZeroTimeClock;

    return-object v0
.end method
