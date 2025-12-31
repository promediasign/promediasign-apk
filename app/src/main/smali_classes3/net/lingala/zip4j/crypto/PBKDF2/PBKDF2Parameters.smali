.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected derivedKey:[B

.field protected hashAlgorithm:Ljava/lang/String;

.field protected hashCharset:Ljava/lang/String;

.field protected iterationCount:I

.field protected salt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    iput p4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    iput-object p5, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    return-object v0
.end method
