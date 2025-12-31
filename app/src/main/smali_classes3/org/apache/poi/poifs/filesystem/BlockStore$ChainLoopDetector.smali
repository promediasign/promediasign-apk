.class public Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/BlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChainLoopDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

.field private used_blocks:[Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/BlockStore;J)V
    .locals 4

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->this$0:Lorg/apache/poi/poifs/filesystem/BlockStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/BlockStore;->getBlockStoreBlockSize()I

    move-result p1

    int-to-long v0, p1

    div-long v2, p2, v0

    long-to-int p1, v2

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    return-void
.end method


# virtual methods
.method public claim(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/BlockStore$ChainLoopDetector;->used_blocks:[Z

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    aget-boolean v1, v0, p1

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    aput-boolean v1, v0, p1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Potential loop detected - Block "

    .line 18
    .line 19
    const-string v2, " was already claimed but was just requested again"

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method
