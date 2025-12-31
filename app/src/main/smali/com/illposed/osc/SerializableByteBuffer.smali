.class public Lcom/illposed/osc/SerializableByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    new-array v4, v0, [B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-static {v4, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Actual content size does not match the indicated buffer size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/illposed/osc/SerializableByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    :goto_0
    return-void
.end method
