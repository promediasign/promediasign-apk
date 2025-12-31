.class public final enum Lorg/jctools/queues/spec/Preference;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jctools/queues/spec/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jctools/queues/spec/Preference;

.field public static final enum LATENCY:Lorg/jctools/queues/spec/Preference;

.field public static final enum NONE:Lorg/jctools/queues/spec/Preference;

.field public static final enum THROUGHPUT:Lorg/jctools/queues/spec/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/jctools/queues/spec/Preference;

    const-string v1, "LATENCY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jctools/queues/spec/Preference;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jctools/queues/spec/Preference;->LATENCY:Lorg/jctools/queues/spec/Preference;

    new-instance v1, Lorg/jctools/queues/spec/Preference;

    const-string v3, "THROUGHPUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jctools/queues/spec/Preference;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jctools/queues/spec/Preference;->THROUGHPUT:Lorg/jctools/queues/spec/Preference;

    new-instance v3, Lorg/jctools/queues/spec/Preference;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jctools/queues/spec/Preference;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jctools/queues/spec/Preference;->NONE:Lorg/jctools/queues/spec/Preference;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jctools/queues/spec/Preference;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jctools/queues/spec/Preference;->$VALUES:[Lorg/jctools/queues/spec/Preference;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jctools/queues/spec/Preference;
    .locals 1

    const-class v0, Lorg/jctools/queues/spec/Preference;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jctools/queues/spec/Preference;

    return-object p0
.end method

.method public static values()[Lorg/jctools/queues/spec/Preference;
    .locals 1

    sget-object v0, Lorg/jctools/queues/spec/Preference;->$VALUES:[Lorg/jctools/queues/spec/Preference;

    invoke-virtual {v0}, [Lorg/jctools/queues/spec/Preference;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jctools/queues/spec/Preference;

    return-object v0
.end method
