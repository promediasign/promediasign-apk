.class public Lsk/mimac/slideshow/communication/key/LibNaClSK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/key/PrivateKey;


# static fields
.field public static final BIN_PREFIX:[B


# instance fields
.field private final lazySodium:Lcom/goterl/lazysodium/LazySodium;

.field private final privateKey:[B

.field private final publicKey:[B

.field private final signKey:[B

.field private final verifyKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "S0:"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->BIN_PREFIX:[B

    return-void
.end method

.method public constructor <init>([B[BLcom/goterl/lazysodium/LazySodium;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->privateKey:[B

    iput-object p3, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->publicKey:[B

    invoke-virtual {p3, v1, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarMultBase([B[B)Z

    new-array p1, v0, [B

    iput-object p1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->verifyKey:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->signKey:[B

    invoke-virtual {p3, p1, v0, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignSeedKeypair([B[B[B)Z

    return-void
.end method

.method public static fromBin([B[BLcom/goterl/lazysodium/LazySodium;)Lsk/mimac/slideshow/communication/key/LibNaClSK;
    .locals 4

    array-length v0, p0

    sget-object v1, Lsk/mimac/slideshow/communication/key/LibNaClSK;->BIN_PREFIX:[B

    array-length v2, v1

    const/16 v3, 0x20

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    array-length v0, v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [B

    array-length v1, v1

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;

    invoke-direct {p0, v0, p1, p2}, Lsk/mimac/slideshow/communication/key/LibNaClSK;-><init>([B[BLcom/goterl/lazysodium/LazySodium;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bin prefix does not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bin is expected to have "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v1

    add-int/2addr v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes, has "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static generate(Lcom/goterl/lazysodium/LazySodium;[B)Lsk/mimac/slideshow/communication/key/LibNaClSK;
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    new-array v0, v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxKeypair([B[B)Z

    new-instance v1, Lsk/mimac/slideshow/communication/key/LibNaClSK;

    invoke-direct {v1, v0, p1, p0}, Lsk/mimac/slideshow/communication/key/LibNaClSK;-><init>([B[BLcom/goterl/lazysodium/LazySodium;)V

    return-object v1
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x30

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    iget-object v1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    .line 7
    .line 8
    array-length v2, p1

    .line 9
    int-to-long v4, v2

    .line 10
    iget-object v6, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->publicKey:[B

    .line 11
    .line 12
    iget-object v7, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->privateKey:[B

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    move-object v3, p1

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxSealOpen([B[BJ[B[B)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Can\'t decrypt message (size="

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length p1, p1

    .line 33
    const-string v2, ")"

    .line 34
    .line 35
    invoke-static {v2, p1, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/communication/key/LibNaClPK;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->publicKey:[B

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/communication/key/LibNaClPK;-><init>([BLcom/goterl/lazysodium/LazySodium;)V

    return-object v0
.end method

.method public keyToBin()[B
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->BIN_PREFIX:[B

    array-length v1, v0

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->privateKey:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->privateKey:[B

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public keyToHash()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->publicKey:[B

    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B)[B
    .locals 7

    const/16 v0, 0x40

    new-array v0, v0, [B

    iget-object v1, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    array-length v2, p1

    int-to-long v4, v2

    iget-object v6, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->signKey:[B

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignDetached([B[BJ[B)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/key/LibNaClSK;->keyToHash()[B

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify([B[B)Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    array-length v1, p2

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->verifyKey:[B

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignVerifyDetached([B[BI[B)Z

    move-result p1

    return p1
.end method

.method public verifyKeyToBin()[B
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->BIN_PREFIX:[B

    array-length v1, v0

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->verifyKey:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClSK;->verifyKey:[B

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
