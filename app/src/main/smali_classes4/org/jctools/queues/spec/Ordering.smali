.class public final enum Lorg/jctools/queues/spec/Ordering;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jctools/queues/spec/Ordering;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jctools/queues/spec/Ordering;

.field public static final enum FIFO:Lorg/jctools/queues/spec/Ordering;

.field public static final enum KFIFO:Lorg/jctools/queues/spec/Ordering;

.field public static final enum NONE:Lorg/jctools/queues/spec/Ordering;

.field public static final enum PRODUCER_FIFO:Lorg/jctools/queues/spec/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/jctools/queues/spec/Ordering;

    const-string v1, "FIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jctools/queues/spec/Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jctools/queues/spec/Ordering;->FIFO:Lorg/jctools/queues/spec/Ordering;

    new-instance v1, Lorg/jctools/queues/spec/Ordering;

    const-string v3, "KFIFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jctools/queues/spec/Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jctools/queues/spec/Ordering;->KFIFO:Lorg/jctools/queues/spec/Ordering;

    new-instance v3, Lorg/jctools/queues/spec/Ordering;

    const-string v5, "PRODUCER_FIFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jctools/queues/spec/Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jctools/queues/spec/Ordering;->PRODUCER_FIFO:Lorg/jctools/queues/spec/Ordering;

    new-instance v5, Lorg/jctools/queues/spec/Ordering;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jctools/queues/spec/Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jctools/queues/spec/Ordering;->NONE:Lorg/jctools/queues/spec/Ordering;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jctools/queues/spec/Ordering;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jctools/queues/spec/Ordering;->$VALUES:[Lorg/jctools/queues/spec/Ordering;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jctools/queues/spec/Ordering;
    .locals 1

    const-class v0, Lorg/jctools/queues/spec/Ordering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jctools/queues/spec/Ordering;

    return-object p0
.end method

.method public static values()[Lorg/jctools/queues/spec/Ordering;
    .locals 1

    sget-object v0, Lorg/jctools/queues/spec/Ordering;->$VALUES:[Lorg/jctools/queues/spec/Ordering;

    invoke-virtual {v0}, [Lorg/jctools/queues/spec/Ordering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jctools/queues/spec/Ordering;

    return-object v0
.end method
