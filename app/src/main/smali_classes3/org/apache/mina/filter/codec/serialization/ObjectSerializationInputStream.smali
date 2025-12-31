.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/ObjectInput;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final in:Ljava/io/DataInputStream;

.field private maxObjectSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/high16 v0, 0x100000

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/DataInputStream;

    iput-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    :goto_0
    iput-object p2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->classLoader:Ljava/lang/ClassLoader;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "in"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMaxObjectSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    return v0
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public readInt()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readObject()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v0, 0x4

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->putInt(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->array()[B

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/4 v6, 0x4

    .line 30
    invoke-virtual {v4, v5, v6, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->classLoader:Ljava/lang/ClassLoader;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getObject(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 47
    .line 48
    const-string v2, "ObjectSize too big: "

    .line 49
    .line 50
    const-string v3, " (expected: <= "

    .line 51
    .line 52
    invoke-static {v0, v2, v3}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    .line 57
    .line 58
    const/16 v3, 0x29

    .line 59
    .line 60
    invoke-static {v0, v2, v3}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_1
    new-instance v1, Ljava/io/StreamCorruptedException;

    .line 69
    .line 70
    const-string v2, "Invalid objectSize: "

    .line 71
    .line 72
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1
.end method

.method public readShort()S
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->maxObjectSize:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "maxObjectSize: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public skipBytes(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result p1

    return p1
.end method
