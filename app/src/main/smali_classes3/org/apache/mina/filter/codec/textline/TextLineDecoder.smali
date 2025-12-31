.class public Lorg/apache/mina/filter/codec/textline/TextLineDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    }
.end annotation


# instance fields
.field private final CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

.field private bufferLength:I

.field private final charset:Ljava/nio/charset/Charset;

.field private delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

.field private maxLineLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p1}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-direct {v0, p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/CharsetEncoder;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "delimiter parameter should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset parameter shuld not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V
    .locals 1

    .line 6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;-><init>(Ljava/nio/charset/Charset;Lorg/apache/mina/filter/codec/textline/LineDelimiter;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return p0
.end method

.method private decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0xa

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-eq v3, v4, :cond_2

    .line 27
    .line 28
    const/16 v4, 0xd

    .line 29
    .line 30
    if-eq v3, v4, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_1
    const/4 v3, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    const/4 v3, 0x1

    .line 41
    :goto_2
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    sub-int/2addr v4, v0

    .line 80
    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, p2, v0, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 95
    .line 96
    .line 97
    move v1, v3

    .line 98
    const/4 v0, 0x0

    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 110
    .line 111
    .line 112
    new-instance p1, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    .line 113
    .line 114
    const-string p3, "Line is too long: "

    .line 115
    .line 116
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method private decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getMatchCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3

    .line 18
    .line 19
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    if-ne v4, v3, :cond_2

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iget-object v3, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimBuf:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 35
    .line 36
    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v0, v3, :cond_0

    .line 41
    .line 42
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    sub-int/2addr v4, v0

    .line 79
    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 80
    .line 81
    .line 82
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->getString(Ljava/nio/charset/CharsetDecoder;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, p2, v0, p4}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 94
    .line 95
    .line 96
    move v1, v3

    .line 97
    :goto_1
    const/4 v0, 0x0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->getOverflowPosition()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->reset()V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    .line 112
    .line 113
    const-string p3, "Line is too long: "

    .line 114
    .line 115
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_2
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v3, v0

    .line 128
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {p3, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p3, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->append(Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;->setMatchCount(I)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;-><init>(Lorg/apache/mina/filter/codec/textline/TextLineDecoder;ILorg/apache/mina/filter/codec/textline/TextLineDecoder$1;)V

    iget-object v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->getContext(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->AUTO:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    iget-object v2, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->delimiter:Lorg/apache/mina/filter/codec/textline/LineDelimiter;

    invoke-virtual {v1, v2}, Lorg/apache/mina/filter/codec/textline/LineDelimiter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeAuto(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->decodeNormal(Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    :goto_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->CONTEXT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0

    return-void
.end method

.method public getBufferLength()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    return v0
.end method

.method public setBufferLength(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->bufferLength:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "bufferLength ("

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 16
    .line 17
    const-string v2, ") should be a positive value"

    .line 18
    .line 19
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public setMaxLineLength(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/filter/codec/textline/TextLineDecoder;->maxLineLength:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "maxLineLength ("

    .line 9
    .line 10
    const-string v2, ") should be a positive value"

    .line 11
    .line 12
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public writeText(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 0

    invoke-interface {p3, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->write(Ljava/lang/Object;)V

    return-void
.end method
