.class final enum Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscardingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;",
        ">;",
        "Lcom/googlecode/concurrentlinkedhashmap/EvictionListener<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

.field public static final enum INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;->INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

    aput-object v0, v1, v2

    sput-object v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;->$VALUES:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

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


# virtual methods
.method public onEviction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
