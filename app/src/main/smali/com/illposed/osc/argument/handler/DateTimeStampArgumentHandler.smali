.class public Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/argument/ArgumentHandler;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/illposed/osc/argument/ArgumentHandler<",
        "Ljava/util/Date;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/illposed/osc/argument/ArgumentHandler<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private epochIndicatorTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;

    invoke-direct {v0}, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;-><init>()V

    sput-object v0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->epochIndicatorTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIdentifier()C
    .locals 1

    const/16 v0, 0x74

    return v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/Date;

    return-object v0
.end method

.method public isMarkerOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/util/Date;
    .locals 2

    .line 2
    sget-object v0, Lcom/illposed/osc/argument/handler/TimeTag64ArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-interface {v0, p1}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/illposed/osc/argument/OSCTimeTag64;

    iget-object v0, p0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->epochIndicatorTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/illposed/osc/argument/OSCTimeTag64;->toDate(J)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public setEpochIndicatorTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->epochIndicatorTime:Ljava/lang/Long;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "epoch-indicator"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/DateTimeStampArgumentHandler;->setEpochIndicatorTime(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
