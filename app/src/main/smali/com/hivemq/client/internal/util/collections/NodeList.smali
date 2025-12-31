.class public Lcom/hivemq/client/internal/util/collections/NodeList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/hivemq/client/internal/util/collections/NodeList$Node<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_0
    iget p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    return-void
.end method

.method public addFirst(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_0
    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_1

    :cond_0
    iput-object p1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    :goto_1
    iget p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    return-void
.end method

.method public getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method

.method public getLast()Lcom/hivemq/client/internal/util/collections/NodeList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iget-object p1, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_0
    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_1

    :cond_1
    iput-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_1
    iget p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->size:I

    return-void
.end method

.method public replace(Lcom/hivemq/client/internal/util/collections/NodeList$Node;Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iget-object p1, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object v0, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    iput-object p1, p2, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->first:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->next:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_0
    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/hivemq/client/internal/util/collections/NodeList;->last:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    goto :goto_1

    :cond_1
    iput-object p2, p1, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->prev:Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    :goto_1
    return-void
.end method
