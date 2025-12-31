.class public Lcom/illposed/osc/ByteArrayListBytesReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/BytesReceiver;


# instance fields
.field private final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->buffer:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->pos:I

    return-void
.end method


# virtual methods
.method public clear()Lcom/illposed/osc/BytesReceiver;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->buffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public put(B)Lcom/illposed/osc/BytesReceiver;
    .locals 4

    iget-object v0, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->buffer:Ljava/util/List;

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->pos:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->pos:I

    return-object p0
.end method

.method public toByteArray()[B
    .locals 6

    iget v0, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->pos:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/illposed/osc/ByteArrayListBytesReceiver;->buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v5, v4

    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
