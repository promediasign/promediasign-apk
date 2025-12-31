.class public Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampService;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 3

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService$1;->$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported digest algo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p1

    :cond_2
    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p1

    :cond_3
    sget-object p1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p1
.end method

.method public setSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    return-void
.end method

.method public timeStamp([BLorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)[B
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 4
    .line 5
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v2, Ljava/math/BigInteger;

    .line 18
    .line 19
    new-instance v3, Ljava/security/SecureRandom;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 22
    .line 23
    .line 24
    const/16 v4, 0x80

    .line 25
    .line 26
    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    .line 30
    .line 31
    invoke-direct {v3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v3, v4}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 39
    .line 40
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspRequestPolicy()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    new-instance v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    .line 48
    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v6}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 55
    .line 56
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->mapDigestAlgoToOID(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3, v5, p1, v2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 73
    .line 74
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 75
    .line 76
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProxyUrl()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    new-instance v3, Ljava/net/URL;

    .line 83
    .line 84
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 85
    .line 86
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getProxyUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    new-instance v6, Ljava/net/Proxy;

    .line 102
    .line 103
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 104
    .line 105
    new-instance v8, Ljava/net/InetSocketAddress;

    .line 106
    .line 107
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const/4 v9, -0x1

    .line 112
    if-ne v3, v9, :cond_1

    .line 113
    .line 114
    const/16 v3, 0x50

    .line 115
    .line 116
    :cond_1
    invoke-direct {v8, v5, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v6, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 120
    .line 121
    .line 122
    move-object v3, v6

    .line 123
    :cond_2
    new-instance v5, Ljava/net/URL;

    .line 124
    .line 125
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 126
    .line 127
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 139
    .line 140
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 141
    .line 142
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUser()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-eqz v5, :cond_3

    .line 147
    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 154
    .line 155
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUser()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v6, ":"

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 168
    .line 169
    invoke-virtual {v6}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspPass()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    const-string v6, "iso-8859-1"

    .line 181
    .line 182
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {v5}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v7, "Basic "

    .line 197
    .line 198
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const-string v6, "Authorization"

    .line 209
    .line 210
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    const-string v5, "POST"

    .line 214
    .line 215
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const/16 v5, 0x4e20

    .line 219
    .line 220
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 227
    .line 228
    .line 229
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 230
    .line 231
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getUserAgent()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    const-string v6, "User-Agent"

    .line 236
    .line 237
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 241
    .line 242
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isTspOldProtocol()Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_4

    .line 247
    .line 248
    const-string v5, "application/timestamp-request"

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_4
    const-string v5, "application/timestamp-query"

    .line 252
    .line 253
    :goto_0
    const-string v6, "Content-Type"

    .line 254
    .line 255
    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    const/16 v5, 0xc8

    .line 273
    .line 274
    if-ne v2, v5, :cond_11

    .line 275
    .line 276
    invoke-virtual {v3, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_10

    .line 281
    .line 282
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 283
    .line 284
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-static {v3, v6}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 292
    .line 293
    .line 294
    sget-object v3, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    const-wide/16 v8, 0x0

    .line 301
    .line 302
    invoke-static {v7, v8, v9, v1}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    new-array v0, v0, [Ljava/lang/Object;

    .line 307
    .line 308
    const-string v10, "response content: "

    .line 309
    .line 310
    aput-object v10, v0, v1

    .line 311
    .line 312
    aput-object v7, v0, v4

    .line 313
    .line 314
    invoke-virtual {v3, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 318
    .line 319
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->isTspOldProtocol()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_5

    .line 324
    .line 325
    const-string v0, "application/timestamp-response"

    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_5
    const-string v0, "application/timestamp-reply"

    .line 329
    .line 330
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_f

    .line 335
    .line 336
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_e

    .line 341
    .line 342
    new-instance v0, Lorg/bouncycastle/tsp/TimeStampResponse;

    .line 343
    .line 344
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-direct {v0, v2}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-eqz p1, :cond_7

    .line 359
    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string p2, "status: "

    .line 363
    .line 364
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    .line 368
    .line 369
    .line 370
    move-result p2

    .line 371
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    new-array p2, v4, [Ljava/lang/Object;

    .line 379
    .line 380
    aput-object p1, p2, v1

    .line 381
    .line 382
    invoke-virtual {v3, v4, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 383
    .line 384
    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string p2, "status string: "

    .line 388
    .line 389
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    new-array p2, v4, [Ljava/lang/Object;

    .line 404
    .line 405
    aput-object p1, p2, v1

    .line 406
    .line 407
    invoke-virtual {v3, v4, p2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    if-eqz p1, :cond_6

    .line 415
    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v2, "fail info int value: "

    .line 419
    .line 420
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    new-array v2, v4, [Ljava/lang/Object;

    .line 435
    .line 436
    aput-object p2, v2, v1

    .line 437
    .line 438
    invoke-virtual {v3, v4, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    const/16 p2, 0x100

    .line 442
    .line 443
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-ne p2, p1, :cond_6

    .line 448
    .line 449
    new-array p1, v4, [Ljava/lang/Object;

    .line 450
    .line 451
    const-string p2, "unaccepted policy"

    .line 452
    .line 453
    aput-object p2, p1, v1

    .line 454
    .line 455
    invoke-virtual {v3, v4, p1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 459
    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v1, "timestamp response status != 0: "

    .line 463
    .line 464
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    throw p1

    .line 482
    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerId;->getSerialNumber()Ljava/math/BigInteger;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    const-string v6, "signer cert serial number: "

    .line 501
    .line 502
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v5

    .line 512
    new-array v6, v4, [Ljava/lang/Object;

    .line 513
    .line 514
    aput-object v5, v6, v1

    .line 515
    .line 516
    invoke-virtual {v3, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    new-instance v5, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v6, "signer cert issuer: "

    .line 522
    .line 523
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    new-array v6, v4, [Ljava/lang/Object;

    .line 534
    .line 535
    aput-object v5, v6, v1

    .line 536
    .line 537
    invoke-virtual {v3, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    const/4 v5, 0x0

    .line 545
    invoke-interface {v3, v5}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    new-instance v6, Ljava/util/HashMap;

    .line 550
    .line 551
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 552
    .line 553
    .line 554
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 559
    .line 560
    .line 561
    move-result v7

    .line 562
    if-eqz v7, :cond_9

    .line 563
    .line 564
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    check-cast v7, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 569
    .line 570
    invoke-virtual {v7}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v8

    .line 578
    if-eqz v8, :cond_8

    .line 579
    .line 580
    invoke-virtual {v7}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    if-eqz v8, :cond_8

    .line 589
    .line 590
    move-object v5, v7

    .line 591
    :cond_8
    invoke-virtual {v7}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 592
    .line 593
    .line 594
    move-result-object v8

    .line 595
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    goto :goto_2

    .line 599
    :cond_9
    if-eqz v5, :cond_d

    .line 600
    .line 601
    new-instance v0, Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .line 605
    .line 606
    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 607
    .line 608
    invoke-direct {v2}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 609
    .line 610
    .line 611
    const-string v3, "BC"

    .line 612
    .line 613
    invoke-virtual {v2, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    .line 614
    .line 615
    .line 616
    :cond_a
    sget-object v3, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    .line 617
    .line 618
    new-instance v7, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    const-string v8, "adding to certificate chain: "

    .line 621
    .line 622
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    new-array v8, v4, [Ljava/lang/Object;

    .line 637
    .line 638
    aput-object v7, v8, v1

    .line 639
    .line 640
    invoke-virtual {v3, v4, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2, v5}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 655
    .line 656
    .line 657
    move-result-object v8

    .line 658
    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    if-eqz v7, :cond_b

    .line 663
    .line 664
    goto :goto_3

    .line 665
    :cond_b
    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v5

    .line 673
    check-cast v5, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 674
    .line 675
    if-nez v5, :cond_a

    .line 676
    .line 677
    :goto_3
    new-instance v2, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 678
    .line 679
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 684
    .line 685
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-direct {v2, v5}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    .line 690
    .line 691
    .line 692
    new-instance v5, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;

    .line 693
    .line 694
    invoke-direct {v5}, Lorg/bouncycastle/cms/DefaultCMSSignatureAlgorithmNameGenerator;-><init>()V

    .line 695
    .line 696
    .line 697
    new-instance v6, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    .line 698
    .line 699
    invoke-direct {v6}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    .line 700
    .line 701
    .line 702
    new-instance v7, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    .line 703
    .line 704
    invoke-direct {v7}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    .line 705
    .line 706
    .line 707
    new-instance v8, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    .line 708
    .line 709
    invoke-direct {v8}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    .line 710
    .line 711
    .line 712
    new-instance v9, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;

    .line 713
    .line 714
    invoke-direct {v9, v5, v6, v7, v8}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v9, v2}, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-virtual {p1, v2}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    .line 722
    .line 723
    .line 724
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 725
    .line 726
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    if-eqz v2, :cond_c

    .line 731
    .line 732
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 733
    .line 734
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspValidator()Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    invoke-interface {v2, v0, p2}, Lorg/apache/poi/poifs/crypt/dsig/services/TimeStampServiceValidator;->validate(Ljava/util/List;Lorg/apache/poi/poifs/crypt/dsig/services/RevocationData;)V

    .line 739
    .line 740
    .line 741
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    const-string v0, "time-stamp token time: "

    .line 744
    .line 745
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p2

    .line 763
    new-array v0, v4, [Ljava/lang/Object;

    .line 764
    .line 765
    aput-object p2, v0, v1

    .line 766
    .line 767
    invoke-virtual {v3, v4, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    .line 771
    .line 772
    .line 773
    move-result-object p1

    .line 774
    return-object p1

    .line 775
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 776
    .line 777
    const-string p2, "TSP response token has no signer certificate"

    .line 778
    .line 779
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    throw p1

    .line 783
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 784
    .line 785
    const-string p2, "Content-Length is zero"

    .line 786
    .line 787
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    throw p1

    .line 791
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 792
    .line 793
    const-string p2, "invalid Content-Type: "

    .line 794
    .line 795
    const-string v0, ": "

    .line 796
    .line 797
    invoke-static {p2, v2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    move-result-object p2

    .line 801
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-static {v0, v8, v9, v1, v5}, Lorg/apache/poi/util/HexDump;->dump([BJII)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p2

    .line 816
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    throw p1

    .line 820
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    .line 821
    .line 822
    const-string p2, "missing Content-Type header"

    .line 823
    .line 824
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    throw p1

    .line 828
    :cond_11
    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->LOG:Lorg/apache/poi/util/POILogger;

    .line 829
    .line 830
    new-instance p2, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 836
    .line 837
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v5, ", had status code "

    .line 845
    .line 846
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    const-string v6, "/"

    .line 853
    .line 854
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v7

    .line 861
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object p2

    .line 868
    const-string v7, "Error contacting TSP server "

    .line 869
    .line 870
    new-array v0, v0, [Ljava/lang/Object;

    .line 871
    .line 872
    aput-object v7, v0, v1

    .line 873
    .line 874
    aput-object p2, v0, v4

    .line 875
    .line 876
    const/4 p2, 0x7

    .line 877
    invoke-virtual {p1, p2, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    new-instance p1, Ljava/io/IOException;

    .line 881
    .line 882
    new-instance p2, Ljava/lang/StringBuilder;

    .line 883
    .line 884
    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    .line 886
    .line 887
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/services/TSPTimeStampService;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 888
    .line 889
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getTspUrl()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object p2

    .line 916
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    throw p1
.end method
