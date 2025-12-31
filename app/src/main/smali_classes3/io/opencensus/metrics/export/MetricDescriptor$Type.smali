.class public final enum Lio/opencensus/metrics/export/MetricDescriptor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/opencensus/metrics/export/MetricDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum CUMULATIVE_DISTRIBUTION:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum CUMULATIVE_DOUBLE:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum CUMULATIVE_INT64:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum GAUGE_DISTRIBUTION:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum GAUGE_DOUBLE:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum GAUGE_INT64:Lio/opencensus/metrics/export/MetricDescriptor$Type;

.field public static final enum SUMMARY:Lio/opencensus/metrics/export/MetricDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v1, "GAUGE_INT64"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/opencensus/metrics/export/MetricDescriptor$Type;->GAUGE_INT64:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v1, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v3, "GAUGE_DOUBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/opencensus/metrics/export/MetricDescriptor$Type;->GAUGE_DOUBLE:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v3, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v5, "GAUGE_DISTRIBUTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/opencensus/metrics/export/MetricDescriptor$Type;->GAUGE_DISTRIBUTION:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v5, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v7, "CUMULATIVE_INT64"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/opencensus/metrics/export/MetricDescriptor$Type;->CUMULATIVE_INT64:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v7, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v9, "CUMULATIVE_DOUBLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/opencensus/metrics/export/MetricDescriptor$Type;->CUMULATIVE_DOUBLE:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v9, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v11, "CUMULATIVE_DISTRIBUTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lio/opencensus/metrics/export/MetricDescriptor$Type;->CUMULATIVE_DISTRIBUTION:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    new-instance v11, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const-string v13, "SUMMARY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lio/opencensus/metrics/export/MetricDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lio/opencensus/metrics/export/MetricDescriptor$Type;->SUMMARY:Lio/opencensus/metrics/export/MetricDescriptor$Type;

    const/4 v13, 0x7

    new-array v13, v13, [Lio/opencensus/metrics/export/MetricDescriptor$Type;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lio/opencensus/metrics/export/MetricDescriptor$Type;->$VALUES:[Lio/opencensus/metrics/export/MetricDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/opencensus/metrics/export/MetricDescriptor$Type;
    .locals 1

    const-class v0, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/opencensus/metrics/export/MetricDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lio/opencensus/metrics/export/MetricDescriptor$Type;
    .locals 1

    sget-object v0, Lio/opencensus/metrics/export/MetricDescriptor$Type;->$VALUES:[Lio/opencensus/metrics/export/MetricDescriptor$Type;

    invoke-virtual {v0}, [Lio/opencensus/metrics/export/MetricDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/opencensus/metrics/export/MetricDescriptor$Type;

    return-object v0
.end method
