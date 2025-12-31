.class public abstract Lorg/apache/mina/util/byteaccess/BufferByteArray;
.super Lorg/apache/mina/util/byteaccess/AbstractByteArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
    }
.end annotation


# instance fields
.field protected bb:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/util/byteaccess/AbstractByteArray;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method


# virtual methods
.method public cursor()Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;

    invoke-direct {v0, p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V

    return-object v0
.end method

.method public first()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract free()V
.end method

.method public get(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public get(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public getChar(I)C
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getChar(I)C

    move-result p1

    return p1
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getIoBuffers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getSingleIoBuffer()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public put(IB)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(IB)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public put(ILorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putChar(IC)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putChar(IC)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putDouble(ID)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putDouble(ID)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putFloat(IF)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putFloat(IF)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putInt(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(II)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putLong(IJ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->putLong(IJ)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public putShort(IS)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putShort(IS)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray;->bb:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    new-instance p2, Lorg/apache/mina/util/byteaccess/BufferByteArray$1;

    invoke-direct {p2, p0, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray$1;-><init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-object p2
.end method
