.class final Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;
.super Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private delta:Ljava/lang/Long;

.field private flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;",
            ">;"
        }
    .end annotation
.end field

.field private maxAllowedDelay:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->delta:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, " delta"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->maxAllowedDelay:Ljava/lang/Long;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, " maxAllowedDelay"

    .line 15
    .line 16
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->flags:Ljava/util/Set;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    const-string v1, " flags"

    .line 25
    .line 26
    invoke-static {v0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->delta:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->maxAllowedDelay:Ljava/lang/Long;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    iget-object v7, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->flags:Ljava/util/Set;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v2, v0

    .line 54
    invoke-direct/range {v2 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue;-><init>(JJLjava/util/Set;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$1;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v2, "Missing required properties:"

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public setDelta(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->delta:Ljava/lang/Long;

    return-object p0
.end method

.method public setFlags(Ljava/util/Set;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->flags:Ljava/util/Set;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null flags"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxAllowedDelay(J)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$ConfigValue$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig_ConfigValue$Builder;->maxAllowedDelay:Ljava/lang/Long;

    return-object p0
.end method
