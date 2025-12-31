.class public abstract Lio/opencensus/trace/Tracestate$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/Tracestate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Entry"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lio/opencensus/trace/Tracestate$Entry;
    .locals 5

    const-string v0, "key"

    invoke-static {p0, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    invoke-static {p1, v0}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lio/opencensus/trace/Tracestate;->access$300(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid key %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lio/opencensus/trace/Tracestate;->access$400(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid value %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lio/opencensus/internal/Utils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lio/opencensus/trace/AutoValue_Tracestate_Entry;

    invoke-direct {v0, p0, p1}, Lio/opencensus/trace/AutoValue_Tracestate_Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
