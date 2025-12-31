.class interface abstract Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Task"
.end annotation


# virtual methods
.method public abstract getNext()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;
.end method

.method public abstract getOrder()I
.end method

.method public abstract isWrite()Z
.end method

.method public abstract setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V
.end method
