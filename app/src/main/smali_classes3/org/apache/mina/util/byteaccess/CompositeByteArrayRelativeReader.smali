.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeReader;


# instance fields
.field private final autoFree:Z


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    iput-boolean p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->autoFree:Z

    return-void
.end method


# virtual methods
.method public cursorPassedFirstComponent()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeReader;->autoFree:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray;->free()V

    :cond_0
    return-void
.end method

.method public get()B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get()B

    move-result v0

    return v0
.end method

.method public get(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->get(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public getChar()C
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getChar()C

    move-result v0

    return v0
.end method

.method public getDouble()D
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getFloat()F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getInt()I

    move-result v0

    return v0
.end method

.method public getLong()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort()S
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->getShort()S

    move-result v0

    return v0
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public skip(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->skip(I)V

    return-void
.end method

.method public slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->slice(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    return-object p1
.end method
