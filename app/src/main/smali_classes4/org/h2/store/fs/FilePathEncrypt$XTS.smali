.class Lorg/h2/store/fs/FilePathEncrypt$XTS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/fs/FilePathEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XTS"
.end annotation


# static fields
.field private static final CIPHER_BLOCK_SIZE:I = 0x10

.field private static final GF_128_FEEDBACK:I = 0x87


# instance fields
.field private final cipher:Lorg/h2/security/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/h2/security/BlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    return-void
.end method

.method private initTweak(J)[B
    .locals 6

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x8

    ushr-long/2addr p1, v4

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {p1, v1, v2, v0}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    return-object v1
.end method

.method private static swap([BIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    aget-byte v2, p0, v1

    add-int v3, p2, v0

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    aput-byte v2, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static updateTweak([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v1, v4, :cond_0

    aget-byte v2, p0, v1

    shr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    move v3, v2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    aget-byte v1, p0, v0

    xor-int/lit16 v1, v1, 0x87

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :cond_1
    return-void
.end method

.method private static xorTweak([BI[B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    aget-byte v2, p0, v1

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt(JI[BI)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->initTweak(J)[B

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p1

    :goto_0
    add-int/lit8 v1, p2, 0x10

    const/16 v2, 0x10

    if-gt v1, p3, :cond_1

    if-lez p2, :cond_0

    invoke-static {p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->updateTweak([B)V

    add-int/lit8 v3, p2, 0x20

    if-le v3, p3, :cond_0

    if-ge v1, p3, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->updateTweak([B)V

    :cond_0
    add-int/2addr p2, p5

    invoke-static {p4, p2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    iget-object v3, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {v3, p4, p2, v2}, Lorg/h2/security/BlockCipher;->decrypt([BII)V

    invoke-static {p4, p2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    move p2, v1

    goto :goto_0

    :cond_1
    if-ge p2, p3, :cond_2

    add-int/lit8 p1, p2, -0x10

    add-int/2addr p1, p5

    sub-int/2addr p3, p2

    add-int/2addr p3, p5

    invoke-static {p4, p2, p1, p3}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->swap([BIII)V

    invoke-static {p4, p1, v0}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    iget-object p2, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {p2, p4, p1, v2}, Lorg/h2/security/BlockCipher;->decrypt([BII)V

    invoke-static {p4, p1, v0}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    :cond_2
    return-void
.end method

.method public encrypt(JI[BI)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->initTweak(J)[B

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v0, p2, 0x10

    const/16 v1, 0x10

    if-gt v0, p3, :cond_1

    if-lez p2, :cond_0

    invoke-static {p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->updateTweak([B)V

    :cond_0
    add-int/2addr p2, p5

    invoke-static {p4, p2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    iget-object v2, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {v2, p4, p2, v1}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    invoke-static {p4, p2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    move p2, v0

    goto :goto_0

    :cond_1
    if-ge p2, p3, :cond_2

    invoke-static {p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->updateTweak([B)V

    add-int v0, p2, p5

    add-int/lit8 v2, p2, -0x10

    add-int/2addr v2, p5

    sub-int/2addr p3, p2

    invoke-static {p4, v0, v2, p3}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->swap([BIII)V

    invoke-static {p4, v2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    iget-object p2, p0, Lorg/h2/store/fs/FilePathEncrypt$XTS;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {p2, p4, v2, v1}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    invoke-static {p4, v2, p1}, Lorg/h2/store/fs/FilePathEncrypt$XTS;->xorTweak([BI[B)V

    :cond_2
    return-void
.end method
