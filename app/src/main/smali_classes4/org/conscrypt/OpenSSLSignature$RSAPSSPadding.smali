.class abstract Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;
.super Lorg/conscrypt/OpenSSLSignature;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RSAPSSPadding"
.end annotation


# static fields
.field private static final TRAILER_FIELD_BC_ID:I = 0x1


# instance fields
.field private final contentDigestAlgorithm:Ljava/lang/String;

.field private mgf1DigestAlgorithm:Ljava/lang/String;

.field private mgf1EvpMdRef:J

.field private saltSizeBytes:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 2

    sget-object v0, Lorg/conscrypt/OpenSSLSignature$EngineType;->RSA:Lorg/conscrypt/OpenSSLSignature$EngineType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/conscrypt/OpenSSLSignature;-><init>(JLorg/conscrypt/OpenSSLSignature$EngineType;Lorg/conscrypt/OpenSSLSignature$1;)V

    iput-object p3, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    iput-wide p1, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    iput p4, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    return-void
.end method


# virtual methods
.method public final configureEVP_PKEY_CTX(J)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {p1, p2, v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    iget-wide v0, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    invoke-static {p1, p2, v0, v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    iget v0, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    invoke-static {p1, p2, v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V

    return-void
.end method

.method public final engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 9

    const-string v0, "Failed to create PSS AlgorithmParameters"

    :try_start_0
    const-string v1, "PSS"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v8, Ljava/security/spec/PSSParameterSpec;

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    const-string v4, "MGF1"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v1, v8}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Ljava/security/ProviderException;

    invoke-direct {v2, v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    .line 2
    .line 3
    const-string v1, " supported"

    .line 4
    .line 5
    const-string v2, ". Only "

    .line 6
    .line 7
    if-eqz v0, :cond_9

    .line 8
    .line 9
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_8

    .line 20
    .line 21
    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->contentDigestAlgorithm:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "MGF1"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "1.2.840.113549.1.1.8"

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 51
    .line 52
    const-string v1, "Unsupported MGF algorithm: "

    .line 53
    .line 54
    const-string v2, ". Only MGF1 supported"

    .line 55
    .line 56
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    instance-of v3, v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 69
    .line 70
    if-eqz v3, :cond_6

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    :try_start_0
    invoke-static {v1}, Lorg/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-ltz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/4 v4, 0x1

    .line 103
    if-ne p1, v4, :cond_3

    .line 104
    .line 105
    iput-object v1, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1DigestAlgorithm:Ljava/lang/String;

    .line 106
    .line 107
    iput-wide v2, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->mgf1EvpMdRef:J

    .line 108
    .line 109
    iput v0, p0, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->saltSizeBytes:I

    .line 110
    .line 111
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLSignature;->getEVP_PKEY_CTX()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .line 117
    cmp-long p1, v0, v2

    .line 118
    .line 119
    if-eqz p1, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Lorg/conscrypt/OpenSSLSignature$RSAPSSPadding;->configureEVP_PKEY_CTX(J)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void

    .line 125
    :cond_3
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 126
    .line 127
    const-string v1, "Unsupported trailer field: "

    .line 128
    .line 129
    const-string v2, ". Only 1 supported"

    .line 130
    .line 131
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0

    .line 139
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 140
    .line 141
    const-string v1, "Salt length must be non-negative: "

    .line 142
    .line 143
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Ljava/security/ProviderException;

    .line 153
    .line 154
    const-string v2, "Failed to obtain EVP_MD for "

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "Unsupported MGF1 digest algorithm: "

    .line 169
    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 189
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v4, "Unsupported MGF parameters: "

    .line 193
    .line 194
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-class v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 204
    .line 205
    invoke-static {v0, v3, v1}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 214
    .line 215
    const-string v0, "Changing content digest algorithm not supported"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p1

    .line 221
    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 222
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    const-string v2, "Unsupported content digest algorithm: "

    .line 226
    .line 227
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw v0

    .line 245
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 246
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v4, "Unsupported parameter: "

    .line 250
    .line 251
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-class p1, Ljava/security/spec/PSSParameterSpec;

    .line 261
    .line 262
    invoke-static {p1, v3, v1}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0
.end method
