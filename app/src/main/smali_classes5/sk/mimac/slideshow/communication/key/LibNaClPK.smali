.class public Lsk/mimac/slideshow/communication/key/LibNaClPK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/communication/key/PublicKey;


# static fields
.field private static final BIN_PREFIX:[B


# instance fields
.field private final lazySodium:Lcom/goterl/lazysodium/LazySodium;

.field private final publicKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "S1:"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->BIN_PREFIX:[B

    return-void
.end method

.method public constructor <init>([BLcom/goterl/lazysodium/LazySodium;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->publicKey:[B

    iput-object p2, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    return-void
.end method

.method public static fromBin([BLcom/goterl/lazysodium/LazySodium;)Lsk/mimac/slideshow/communication/key/LibNaClPK;
    .locals 4

    array-length v0, p0

    sget-object v1, Lsk/mimac/slideshow/communication/key/LibNaClPK;->BIN_PREFIX:[B

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

    new-instance p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/communication/key/LibNaClPK;-><init>([BLcom/goterl/lazysodium/LazySodium;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bin prefix does not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Bin is expected to have "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes, has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, 0x30

    new-array v0, v0, [B

    iget-object v1, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->lazySodium:Lcom/goterl/lazysodium/LazySodium;

    array-length v2, p1

    int-to-long v4, v2

    iget-object v6, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->publicKey:[B

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxSeal([B[BJ[B)Z

    return-object v0
.end method

.method public keyToBin()[B
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->BIN_PREFIX:[B

    array-length v1, v0

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->publicKey:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->publicKey:[B

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public keyToHash()[B
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/key/LibNaClPK;->publicKey:[B

    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha1([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/key/LibNaClPK;->keyToHash()[B

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
