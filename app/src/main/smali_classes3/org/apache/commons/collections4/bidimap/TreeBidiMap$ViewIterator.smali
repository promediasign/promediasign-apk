.class abstract Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ViewIterator"
.end annotation


# instance fields
.field private expectedModifications:I

.field lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

.field private previousNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    invoke-static {p1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {p1, v0, p2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2300(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public navigateNext()Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    invoke-static {v0, v1}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;)V

    iget v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->this$0:Lorg/apache/commons/collections4/bidimap/TreeBidiMap;

    iget-object v2, p0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$ViewIterator;->orderType:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap;->access$2500(Lorg/apache/commons/collections4/bidimap/TreeBidiMap;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;)Lorg/apache/commons/collections4/bidimap/TreeBidiMap$Node;

    move-result-object v0

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
