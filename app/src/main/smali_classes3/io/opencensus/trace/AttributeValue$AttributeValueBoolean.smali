.class abstract Lio/opencensus/trace/AttributeValue$AttributeValueBoolean;
.super Lio/opencensus/trace/AttributeValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/trace/AttributeValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AttributeValueBoolean"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/opencensus/trace/AttributeValue;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Boolean;)Lio/opencensus/trace/AttributeValue;
    .locals 2

    new-instance v0, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueBoolean;

    const-string v1, "booleanValue"

    invoke-static {p0, v1}, Lio/opencensus/internal/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lio/opencensus/trace/AutoValue_AttributeValue_AttributeValueBoolean;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public abstract getBooleanValue()Ljava/lang/Boolean;
.end method

.method public final match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/String;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Boolean;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/opencensus/trace/AttributeValue$AttributeValueBoolean;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/opencensus/common/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final match(Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;Lio/opencensus/common/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/String;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Boolean;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "-",
            "Ljava/lang/Double;",
            "TT;>;",
            "Lio/opencensus/common/Function<",
            "Ljava/lang/Object;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/opencensus/trace/AttributeValue$AttributeValueBoolean;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/opencensus/common/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
