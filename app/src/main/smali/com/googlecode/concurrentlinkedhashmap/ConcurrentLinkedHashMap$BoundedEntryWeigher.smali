.class final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundedEntryWeigher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field final weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    return-void
.end method


# virtual methods
.method public weightOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;->weightOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkArgument(Z)V

    return p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    return-object v0
.end method
