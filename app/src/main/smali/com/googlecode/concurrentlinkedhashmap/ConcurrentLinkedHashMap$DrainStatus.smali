.class abstract enum Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "DrainStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

.field public static final enum IDLE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

.field public static final enum PROCESSING:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

.field public static final enum REQUIRED:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$1;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->IDLE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$2;

    const-string v3, "REQUIRED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->REQUIRED:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    new-instance v3, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$3;

    const-string v5, "PROCESSING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->PROCESSING:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->$VALUES:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract shouldDrainBuffers(Z)Z
.end method
