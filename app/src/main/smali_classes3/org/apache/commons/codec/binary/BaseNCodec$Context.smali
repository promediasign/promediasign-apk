.class Lorg/apache/commons/codec/binary/BaseNCodec$Context;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/binary/BaseNCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field buffer:[B

.field currentLinePos:I

.field eof:Z

.field ibitWorkArea:I

.field lbitWorkArea:J

.field modulus:I

.field pos:I

.field readPos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 16
    .line 17
    iget-boolean v3, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 18
    .line 19
    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->ibitWorkArea:I

    .line 20
    .line 21
    iget-wide v5, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 22
    .line 23
    iget v7, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 24
    .line 25
    iget v8, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 26
    .line 27
    iget v9, p0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 28
    .line 29
    new-instance v10, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "[buffer="

    .line 38
    .line 39
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", currentLinePos="

    .line 46
    .line 47
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, ", eof="

    .line 54
    .line 55
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", ibitWorkArea="

    .line 62
    .line 63
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, ", lbitWorkArea="

    .line 70
    .line 71
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, ", modulus="

    .line 78
    .line 79
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", pos="

    .line 83
    .line 84
    const-string v1, ", readPos="

    .line 85
    .line 86
    invoke-static {v10, v7, v0, v8, v1}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "]"

    .line 90
    .line 91
    invoke-static {v0, v9, v10}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
