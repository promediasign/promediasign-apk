.class public Lorg/spongycastle/asn1/ASN1UTCTime;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field private time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1UTCTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid date string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    return-void
.end method


# virtual methods
.method public asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    check-cast p1, Lorg/spongycastle/asn1/ASN1UTCTime;

    iget-object p1, p1, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 3

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public encodedLength()I
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public getAdjustedTime()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x35

    if-ge v1, v2, :cond_0

    const-string v1, "20"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "19"

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmssz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1UTCTime;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    .line 2
    .line 3
    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x2d

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x2b

    .line 14
    .line 15
    const/16 v4, 0xc

    .line 16
    .line 17
    const/16 v5, 0xa

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-gez v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v2, 0xb

    .line 33
    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "00GMT+00:00"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, "GMT+00:00"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-gez v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    add-int/lit8 v2, v2, -0x3

    .line 95
    .line 96
    if-ne v1, v2, :cond_3

    .line 97
    .line 98
    const-string v2, "00"

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_3
    const-string v2, ":"

    .line 105
    .line 106
    const/16 v3, 0xf

    .line 107
    .line 108
    if-ne v1, v5, :cond_4

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v4, "00GMT"

    .line 116
    .line 117
    invoke-static {v0, v6, v5, v1, v4}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/16 v4, 0xd

    .line 121
    .line 122
    invoke-static {v0, v5, v4, v1, v2}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v5, "GMT"

    .line 143
    .line 144
    invoke-static {v0, v6, v4, v1, v5}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v4, v3, v1, v2}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const/16 v2, 0x11

    .line 151
    .line 152
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
