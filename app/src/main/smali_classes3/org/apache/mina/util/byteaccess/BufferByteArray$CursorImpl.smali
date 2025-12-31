.class Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/BufferByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CursorImpl"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/util/byteaccess/BufferByteArray;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    return-void
.end method


# virtual methods
.method public get()B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(I)B

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->get(ILorg/apache/mina/core/buffer/IoBuffer;)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public getChar()C
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getChar(I)C

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getDouble()D
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getDouble(I)D

    move-result-wide v0

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getFloat(I)F

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getInt()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public getLong()J
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getLong(I)J

    move-result-wide v0

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-wide v0
.end method

.method public getRemaining()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShort()S
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->getShort(I)S

    move-result v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return v0
.end method

.method public hasRemaining()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(IB)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v2, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v1, v2, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->put(ILorg/apache/mina/core/buffer/IoBuffer;)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putChar(C)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putChar(IC)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putDouble(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putDouble(ID)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putFloat(F)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putFloat(IF)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putInt(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putInt(II)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putLong(J)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putLong(IJ)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public putShort(S)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->putShort(IS)V

    iget p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void
.end method

.method public setIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->last()I

    move-result v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(I)V
    .locals 1

    iget v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->setIndex(I)V

    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->this$0:Lorg/apache/mina/util/byteaccess/BufferByteArray;

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/util/byteaccess/BufferByteArray;->slice(II)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/mina/util/byteaccess/BufferByteArray$CursorImpl;->index:I

    return-object v0
.end method
