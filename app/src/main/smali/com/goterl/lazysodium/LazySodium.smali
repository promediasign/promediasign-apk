.class public abstract Lcom/goterl/lazysodium/LazySodium;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hexArray:[C


# instance fields
.field protected final charset:Ljava/nio/charset/Charset;

.field protected final messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/LazySodium;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    return-void
.end method


# virtual methods
.method public cryptoBoxKeypair([B[B)Z
    .locals 1

    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_box_keypair([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoBoxSeal([B[BJ[B)Z
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p3, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    int-to-long v0, v0

    .line 9
    cmp-long v2, p3, v0

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p2

    .line 19
    move-wide v6, p3

    .line 20
    move-object v8, p5

    .line 21
    invoke-virtual/range {v3 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_box_seal([B[BJ[B)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string p2, "messageLen out of bounds: "

    .line 33
    .line 34
    invoke-static {p2, p3, p4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public cryptoBoxSealOpen([B[BJ[B[B)Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p3, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    int-to-long v0, v0

    .line 9
    cmp-long v5, p3, v0

    .line 10
    .line 11
    if-gtz v5, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-wide v3, p3

    .line 20
    move-object v5, p5

    .line 21
    move-object v6, p6

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_box_seal_open([B[BJ[B[B)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v2, "cipherLen out of bounds: "

    .line 34
    .line 35
    invoke-static {v2, p3, p4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public cryptoScalarMultBase([B[B)Z
    .locals 1

    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_scalarmult_base([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignDetached([B[BJ[B)Z
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p3, v0

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    array-length v0, p2

    .line 8
    int-to-long v0, v0

    .line 9
    cmp-long v2, p3, v0

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    .line 18
    .line 19
    sget-object v1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/sun/jna/ptr/PointerByReference;-><init>(Lcom/sun/jna/Pointer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    move-object v4, p1

    .line 29
    move-object v6, p2

    .line 30
    move-wide v7, p3

    .line 31
    move-object v9, p5

    .line 32
    invoke-virtual/range {v3 .. v9}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_detached([BLcom/sun/jna/Pointer;[BJ[B)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "messageLen out of bounds: "

    .line 44
    .line 45
    invoke-static {p2, p3, p4}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public cryptoSignSeedKeypair([B[B[B)Z
    .locals 1

    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_seed_keypair([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignVerifyDetached([B[BI[B)Z
    .locals 7

    .line 1
    if-ltz p3, :cond_0

    .line 2
    .line 3
    array-length v0, p2

    .line 4
    if-gt p3, v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    int-to-long v4, p3

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v6, p4

    .line 14
    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_verify_detached([B[BJ[B)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "messageLen out of bounds: "

    .line 26
    .line 27
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public abstract getSodium()Lcom/goterl/lazysodium/Sodium;
.end method

.method public successful(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
