.class Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$1;
.super Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;


# direct methods
.method public constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;Lcom/googlecode/concurrentlinkedhashmap/Linked;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$1;->this$0:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    invoke-direct {p0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;-><init>(Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;Lcom/googlecode/concurrentlinkedhashmap/Linked;)V

    return-void
.end method


# virtual methods
.method public computeNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque$AbstractLinkedIterator;->cursor:Lcom/googlecode/concurrentlinkedhashmap/Linked;

    invoke-interface {v0}, Lcom/googlecode/concurrentlinkedhashmap/Linked;->getNext()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    return-object v0
.end method
