.class public Lorg/spongycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method private set00Check(Z)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public readIndef(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown BER object encountered: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    return-object p1
.end method

.method public readObject()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 17
    .line 18
    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    and-int/lit8 v3, v0, 0x20

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 29
    .line 30
    iget v5, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    .line 31
    .line 32
    invoke-static {v3, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-gez v3, :cond_5

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    new-instance v1, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    .line 41
    .line 42
    iget-object v3, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 43
    .line 44
    iget v5, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    .line 45
    .line 46
    invoke-direct {v1, v3, v5}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 50
    .line 51
    iget v5, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_limit:I

    .line 52
    .line 53
    invoke-direct {v3, v1, v5}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 54
    .line 55
    .line 56
    and-int/lit8 v1, v0, 0x40

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    .line 61
    .line 62
    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_2
    and-int/lit16 v0, v0, 0x80

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    .line 71
    .line 72
    invoke-direct {v0, v4, v2, v3}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_3
    invoke-virtual {v3, v2}, Lorg/spongycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/spongycastle/asn1/ASN1Encodable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 82
    .line 83
    const-string v1, "indefinite-length primitive encoding encountered"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_5
    new-instance v4, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    .line 90
    .line 91
    iget-object v5, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 92
    .line 93
    invoke-direct {v4, v5, v3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 94
    .line 95
    .line 96
    and-int/lit8 v3, v0, 0x40

    .line 97
    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 101
    .line 102
    invoke-virtual {v4}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_6
    and-int/lit16 v0, v0, 0x80

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    new-instance v0, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    .line 115
    .line 116
    new-instance v3, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 117
    .line 118
    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_7
    const/4 v0, 0x4

    .line 126
    if-eqz v1, :cond_c

    .line 127
    .line 128
    if-eq v2, v0, :cond_b

    .line 129
    .line 130
    const/16 v0, 0x8

    .line 131
    .line 132
    if-eq v2, v0, :cond_a

    .line 133
    .line 134
    const/16 v0, 0x10

    .line 135
    .line 136
    if-eq v2, v0, :cond_9

    .line 137
    .line 138
    const/16 v0, 0x11

    .line 139
    .line 140
    if-ne v2, v0, :cond_8

    .line 141
    .line 142
    new-instance v0, Lorg/spongycastle/asn1/DERSetParser;

    .line 143
    .line 144
    new-instance v1, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 145
    .line 146
    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 154
    .line 155
    const-string v1, "unknown tag "

    .line 156
    .line 157
    const-string v3, " encountered"

    .line 158
    .line 159
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0

    .line 167
    :cond_9
    new-instance v0, Lorg/spongycastle/asn1/DERSequenceParser;

    .line 168
    .line 169
    new-instance v1, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 170
    .line 171
    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_a
    new-instance v0, Lorg/spongycastle/asn1/DERExternalParser;

    .line 179
    .line 180
    new-instance v1, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 181
    .line 182
    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 186
    .line 187
    .line 188
    return-object v0

    .line 189
    :cond_b
    new-instance v0, Lorg/spongycastle/asn1/BEROctetStringParser;

    .line 190
    .line 191
    new-instance v1, Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 192
    .line 193
    invoke-direct {v1, v4}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    .line 197
    .line 198
    .line 199
    return-object v0

    .line 200
    :cond_c
    if-eq v2, v0, :cond_d

    .line 201
    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    .line 203
    .line 204
    invoke-static {v2, v4, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;

    .line 205
    .line 206
    .line 207
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lorg/spongycastle/asn1/ASN1Exception;

    .line 211
    .line 212
    const-string v2, "corrupted stream detected"

    .line 213
    .line 214
    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    throw v1

    .line 218
    :cond_d
    new-instance v0, Lorg/spongycastle/asn1/DEROctetStringParser;

    .line 219
    .line 220
    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DEROctetStringParser;-><init>(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)V

    .line 221
    .line 222
    .line 223
    return-object v0
.end method

.method public readTaggedObject(ZI)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast p1, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, p2, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v1, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/BERTaggedObject;

    invoke-static {p1}, Lorg/spongycastle/asn1/BERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/BERSequence;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-static {p1}, Lorg/spongycastle/asn1/DERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    :goto_1
    return-object v1
.end method

.method public readVector()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1StreamParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lorg/spongycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/spongycastle/asn1/InMemoryRepresentable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v0
.end method
