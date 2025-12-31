.class public abstract Lorg/conscrypt/OpenSSLEvpCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "SourceFile"


# instance fields
.field private calledUpdate:Z

.field private final cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    new-instance p1, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object p1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    return-void
.end method

.method private reset()V
    .locals 6

    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    iget-object v3, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result v5

    const-wide/16 v1, 0x0

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    return-void
.end method


# virtual methods
.method public doFinalInternal([BII)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    array-length v0, p1

    .line 14
    sub-int/2addr v0, p2

    .line 15
    if-lt v0, p3, :cond_1

    .line 16
    .line 17
    iget-object p3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 18
    .line 19
    invoke-static {p3, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-array p3, p3, [B

    .line 25
    .line 26
    iget-object v2, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 27
    .line 28
    invoke-static {v2, p3, v1}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gt v2, v0, :cond_3

    .line 33
    .line 34
    if-lez v2, :cond_2

    .line 35
    .line 36
    invoke-static {p3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_2
    move p1, v2

    .line 40
    :goto_0
    add-int/2addr p1, p2

    .line 41
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->reset()V

    .line 42
    .line 43
    .line 44
    sub-int/2addr p1, p2

    .line 45
    return p1

    .line 46
    :cond_3
    new-instance p1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    .line 47
    .line 48
    const-string p2, "buffer is too short: "

    .line 49
    .line 50
    const-string p3, " > "

    .line 51
    .line 52
    invoke-static {p2, v2, p3, v0}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 7

    .line 1
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    array-length v0, p1

    .line 14
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lorg/conscrypt/OpenSSLEvpCipher;->getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    cmp-long v4, v2, v0

    .line 27
    .line 28
    if-eqz v4, :cond_a

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v1, " mode"

    .line 39
    .line 40
    if-nez p2, :cond_3

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    new-array p2, v0, [B

    .line 47
    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-static {p2}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p3, "IV must be specified in "

    .line 63
    .line 64
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 68
    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_3
    if-nez v0, :cond_5

    .line 84
    .line 85
    if-nez p2, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p3, "IV not used in "

    .line 93
    .line 94
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p3, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    .line 114
    .line 115
    array-length p3, p2

    .line 116
    if-ne p3, v0, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 120
    .line 121
    const-string p3, "expected IV length of "

    .line 122
    .line 123
    const-string v1, " but was "

    .line 124
    .line 125
    invoke-static {v0, p3, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    array-length p2, p2

    .line 130
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_7
    :goto_2
    iput-object p2, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->supportsVariableSizeKey()Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    iget-object v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 148
    .line 149
    if-eqz p3, :cond_8

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 154
    .line 155
    .line 156
    iget-object p3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 157
    .line 158
    array-length v0, p1

    .line 159
    invoke-static {p3, v0}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 163
    .line 164
    const-wide/16 v1, 0x0

    .line 165
    .line 166
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    move-object v3, p1

    .line 171
    move-object v4, p2

    .line 172
    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 173
    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    move-object v4, p1

    .line 177
    move-object v5, p2

    .line 178
    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 179
    .line 180
    .line 181
    :goto_3
    iget-object p1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 182
    .line 183
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    sget-object p3, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 188
    .line 189
    const/4 v0, 0x0

    .line 190
    if-ne p2, p3, :cond_9

    .line 191
    .line 192
    const/4 p2, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_9
    const/4 p2, 0x0

    .line 195
    :goto_4
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 199
    .line 200
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    iput p1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    .line 205
    .line 206
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 207
    .line 208
    return-void

    .line 209
    :cond_a
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    .line 210
    .line 211
    new-instance p3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v0, "Cannot find name for key length = "

    .line 214
    .line 215
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    array-length p1, p1

    .line 219
    mul-int/lit8 p1, p1, 0x8

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string p1, " and mode = "

    .line 225
    .line 226
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 230
    .line 231
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p2
.end method

.method public abstract getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method public getOutputSizeForFinal(I)I
    .locals 3

    iget v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v1

    sget-object v2, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne v1, v2, :cond_1

    add-int/2addr v0, p1

    return v0

    :cond_1
    iget-object v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    add-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    iget v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v1, p1, v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :cond_4
    add-int/2addr p1, v0

    iget v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public getOutputSizeForUpdate(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result p1

    return p1
.end method

.method public updateInternal([BII[BII)I
    .locals 7

    array-length v0, p4

    sub-int/2addr v0, p5

    if-lt v0, p6, :cond_0

    iget-object v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v2, p4

    move v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result p1

    add-int/2addr p1, p5

    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    sub-int/2addr p1, p5

    return p1

    :cond_0
    new-instance p1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string p2, "output buffer too small during update: "

    const-string p3, " < "

    .line 1
    invoke-static {p2, v0, p3, p6}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
