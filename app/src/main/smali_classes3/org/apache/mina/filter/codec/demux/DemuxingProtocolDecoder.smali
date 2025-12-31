.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final STATE:Lorg/apache/mina/core/session/AttributeKey;

.field private decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-object p0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-class v0, Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unregisterable type: "

    .line 1
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified class doesn\'t have a public default constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "decoderClass"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 2

    .line 7
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 4

    .line 8
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v1, :cond_5

    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v4, v1

    .line 18
    sub-int/2addr v4, v2

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    if-ltz v4, :cond_3

    .line 21
    .line 22
    aget-object v6, v1, v4

    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    :try_start_0
    invoke-interface {v6, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decodable(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 33
    .line 34
    .line 35
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 40
    .line 41
    .line 42
    sget-object v7, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 43
    .line 44
    if-ne v9, v7, :cond_0

    .line 45
    .line 46
    invoke-static {v0, v6}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    sget-object v6, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 51
    .line 52
    if-ne v9, v6, :cond_1

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    sget-object v6, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 58
    .line 59
    if-ne v9, v6, :cond_2

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "Unexpected decode result (see your decodable()): "

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p2, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v7}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    :goto_2
    array-length v1, v1

    .line 93
    if-eq v5, v1, :cond_4

    .line 94
    .line 95
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    return v3

    .line 102
    :cond_4
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    invoke-virtual {p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 111
    .line 112
    .line 113
    new-instance p2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .line 114
    .line 115
    const-string p3, "No appropriate message decoder: "

    .line 116
    .line 117
    invoke-static {p3, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-direct {p2, p3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p2

    .line 128
    :cond_5
    const/4 v1, 0x0

    .line 129
    :try_start_1
    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-interface {v4, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 138
    .line 139
    if-ne p1, p2, :cond_6

    .line 140
    .line 141
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :catch_0
    move-exception p1

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 148
    .line 149
    if-ne p1, p2, :cond_7

    .line 150
    .line 151
    return v3

    .line 152
    :cond_7
    sget-object p2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 153
    .line 154
    if-ne p1, p2, :cond_8

    .line 155
    .line 156
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 157
    .line 158
    .line 159
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .line 160
    .line 161
    const-string p2, "Message decoder returned NOT_OK."

    .line 162
    .line 163
    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_8
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 168
    .line 169
    .line 170
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 171
    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v2, "Unexpected decode result (see your decode()): "

    .line 178
    .line 179
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_3
    invoke-static {v0, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    return-void
.end method
