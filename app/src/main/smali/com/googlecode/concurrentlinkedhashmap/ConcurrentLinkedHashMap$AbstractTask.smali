.class abstract Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractTask"
.end annotation


# instance fields
.field final order:I

.field task:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;->this$0:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->nextOrdering()I

    move-result p1

    iput p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;->order:I

    return-void
.end method


# virtual methods
.method public getNext()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;->task:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;->order:I

    return v0
.end method

.method public setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;->task:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    return-void
.end method
