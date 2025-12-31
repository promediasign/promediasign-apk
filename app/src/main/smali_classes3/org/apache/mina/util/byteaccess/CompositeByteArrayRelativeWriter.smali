.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.super Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/IoRelativeWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$NopExpander;,
        Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;
    }
.end annotation


# instance fields
.field private final autoFlush:Z

.field private final expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

.field private final flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V

    iput-object p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    iput-object p3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    iput-boolean p4, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    return-void
.end method

.method private prepareForAccess(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->last()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->expander:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;->expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cursorPassedFirstComponent()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->autoFlush:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->first()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->getFirst()Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/util/byteaccess/IoAbsoluteReader;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0}, Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flushTo(I)V

    return-void
.end method

.method public flushTo(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cba:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->flusher:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Flusher;->flush(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    return-void
.end method

.method public bridge synthetic order()Ljava/nio/ByteOrder;
    .locals 1

    invoke-super {p0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public put(B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(B)V

    return-void
.end method

.method public put(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->put(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public putChar(C)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putChar(C)V

    return-void
.end method

.method public putDouble(D)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putDouble(D)V

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putFloat(F)V

    return-void
.end method

.method public putInt(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putInt(I)V

    return-void
.end method

.method public putLong(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putLong(J)V

    return-void
.end method

.method public putShort(S)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;->prepareForAccess(I)V

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeWriter;->putShort(S)V

    return-void
.end method

.method public skip(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursor:Lorg/apache/mina/util/byteaccess/ByteArray$Cursor;

    invoke-interface {v0, p1}, Lorg/apache/mina/util/byteaccess/IoRelativeReader;->skip(I)V

    return-void
.end method
