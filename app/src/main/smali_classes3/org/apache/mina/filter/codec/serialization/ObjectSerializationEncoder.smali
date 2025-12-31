.class public Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;
.super Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;
.source "SourceFile"


# instance fields
.field private maxObjectSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolEncoderAdapter;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 1

    .line 1
    instance-of p1, p2, Ljava/io/Serializable;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/16 p1, 0x40

    .line 6
    .line 7
    invoke-static {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->putObject(Ljava/lang/Object;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    add-int/lit8 p2, p2, -0x4

    .line 23
    .line 24
    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    .line 25
    .line 26
    if-gt p2, v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;->write(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p3, "The encoded object is too big: "

    .line 38
    .line 39
    const-string v0, " (> "

    .line 40
    .line 41
    invoke-static {p2, p3, v0}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget p3, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    .line 46
    .line 47
    const/16 v0, 0x29

    .line 48
    .line 49
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/io/NotSerializableException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method

.method public getMaxObjectSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

    return v0
.end method

.method public setMaxObjectSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/serialization/ObjectSerializationEncoder;->maxObjectSize:I

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
