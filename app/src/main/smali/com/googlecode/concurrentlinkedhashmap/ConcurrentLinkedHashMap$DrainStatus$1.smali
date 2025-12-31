.class final enum Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus$1;
.super Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;-><init>(Ljava/lang/String;ILcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$1;)V

    return-void
.end method


# virtual methods
.method public shouldDrainBuffers(Z)Z
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
