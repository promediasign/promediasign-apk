.class public final enum Lio/opencensus/common/ServerStatsFieldEnums$Id;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/common/ServerStatsFieldEnums$Id;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/common/ServerStatsFieldEnums$Id;

.field public static final enum SERVER_STATS_LB_LATENCY_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

.field public static final enum SERVER_STATS_SERVICE_LATENCY_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

.field public static final enum SERVER_STATS_TRACE_OPTION_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

.field private static final map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lio/opencensus/common/ServerStatsFieldEnums$Id;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/opencensus/common/ServerStatsFieldEnums$Id;

    const-string v1, "SERVER_STATS_LB_LATENCY_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/opencensus/common/ServerStatsFieldEnums$Id;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/opencensus/common/ServerStatsFieldEnums$Id;->SERVER_STATS_LB_LATENCY_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

    new-instance v1, Lio/opencensus/common/ServerStatsFieldEnums$Id;

    const-string v3, "SERVER_STATS_SERVICE_LATENCY_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/opencensus/common/ServerStatsFieldEnums$Id;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/opencensus/common/ServerStatsFieldEnums$Id;->SERVER_STATS_SERVICE_LATENCY_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

    new-instance v3, Lio/opencensus/common/ServerStatsFieldEnums$Id;

    const-string v5, "SERVER_STATS_TRACE_OPTION_ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lio/opencensus/common/ServerStatsFieldEnums$Id;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/opencensus/common/ServerStatsFieldEnums$Id;->SERVER_STATS_TRACE_OPTION_ID:Lio/opencensus/common/ServerStatsFieldEnums$Id;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/opencensus/common/ServerStatsFieldEnums$Id;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lio/opencensus/common/ServerStatsFieldEnums$Id;->$VALUES:[Lio/opencensus/common/ServerStatsFieldEnums$Id;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lio/opencensus/common/ServerStatsFieldEnums$Id;->map:Ljava/util/TreeMap;

    invoke-static {}, Lio/opencensus/common/ServerStatsFieldEnums$Id;->values()[Lio/opencensus/common/ServerStatsFieldEnums$Id;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v5, Lio/opencensus/common/ServerStatsFieldEnums$Id;->map:Ljava/util/TreeMap;

    iget v6, v3, Lio/opencensus/common/ServerStatsFieldEnums$Id;->value:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/opencensus/common/ServerStatsFieldEnums$Id;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/common/ServerStatsFieldEnums$Id;
    .locals 1

    const-class v0, Lio/opencensus/common/ServerStatsFieldEnums$Id;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/common/ServerStatsFieldEnums$Id;

    return-object p0
.end method

.method public static values()[Lio/opencensus/common/ServerStatsFieldEnums$Id;
    .locals 1

    sget-object v0, Lio/opencensus/common/ServerStatsFieldEnums$Id;->$VALUES:[Lio/opencensus/common/ServerStatsFieldEnums$Id;

    invoke-virtual {v0}, [Lio/opencensus/common/ServerStatsFieldEnums$Id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/common/ServerStatsFieldEnums$Id;

    return-object v0
.end method
