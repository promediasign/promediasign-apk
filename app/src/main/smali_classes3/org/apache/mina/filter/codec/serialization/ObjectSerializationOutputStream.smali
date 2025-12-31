.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Ljava/io/ObjectOutput;


# instance fields
.field private maxObjectSize:I

.field private final out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->maxObjectSize:I

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/DataOutputStream;

    iput-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public getMaxObjectSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->maxObjectSize:I

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

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public writeByte(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public writeChar(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    return-void
.end method

.method public writeDouble(D)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    return-void
.end method

.method public writeFloat(F)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(IZ)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    add-int/lit8 p1, p1, -0x4

    .line 20
    .line 21
    iget v2, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->maxObjectSize:I

    .line 22
    .line 23
    if-gt p1, v2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->array()[B

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "The encoded object is too big: "

    .line 42
    .line 43
    const-string v2, " (> "

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget v1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->maxObjectSize:I

    .line 50
    .line 51
    const/16 v2, 0x29

    .line 52
    .line 53
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0
.end method

.method public writeShort(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationOutputStream;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
