.class public final enum Lorg/apache/poi/poifs/crypt/HashAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field public static final enum whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;


# instance fields
.field public final ecmaId:I

.field public final ecmaString:Ljava/lang/String;

.field public final hashSize:I

.field public final jceHmacId:Ljava/lang/String;

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 28

    new-instance v9, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v7, ""

    const/4 v8, 0x0

    const-string v1, "none"

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v17, "HmacSHA1"

    const/16 v18, 0x0

    const-string v11, "sha1"

    const/4 v12, 0x1

    const-string v13, "SHA-1"

    const v14, 0x8004

    const-string v15, "SHA1"

    const/16 v16, 0x14

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v26, "HmacSHA256"

    const/16 v27, 0x0

    const-string v20, "sha256"

    const/16 v21, 0x2

    const-string v22, "SHA-256"

    const v23, 0x800c

    const-string v24, "SHA256"

    const/16 v25, 0x20

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v17, "HmacSHA384"

    const-string v11, "sha384"

    const/4 v12, 0x3

    const-string v13, "SHA-384"

    const v14, 0x800d

    const-string v15, "SHA384"

    const/16 v16, 0x30

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v26, "HmacSHA512"

    const-string v20, "sha512"

    const/16 v21, 0x4

    const-string v22, "SHA-512"

    const v23, 0x800e

    const-string v24, "SHA512"

    const/16 v25, 0x40

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v17, "HmacMD5"

    const-string v11, "md5"

    const/4 v12, 0x5

    const-string v13, "MD5"

    const/4 v14, -0x1

    const-string v15, "MD5"

    const/16 v16, 0x10

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v26, "Hmac-MD2"

    const/16 v27, 0x1

    const-string v20, "md2"

    const/16 v21, 0x6

    const-string v22, "MD2"

    const/16 v23, -0x1

    const-string v24, "MD2"

    const/16 v25, 0x10

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md2:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v6, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v17, "Hmac-MD4"

    const/16 v18, 0x1

    const-string v11, "md4"

    const/4 v12, 0x7

    const-string v13, "MD4"

    const-string v15, "MD4"

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md4:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v7, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v26, "HMac-RipeMD128"

    const-string v20, "ripemd128"

    const/16 v21, 0x8

    const-string v22, "RipeMD128"

    const-string v24, "RIPEMD-128"

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd128:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v8, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v17, "HMac-RipeMD160"

    const-string v11, "ripemd160"

    const/16 v12, 0x9

    const-string v13, "RipeMD160"

    const-string v15, "RIPEMD-160"

    const/16 v16, 0x14

    move-object v10, v8

    invoke-direct/range {v10 .. v18}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v8, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ripemd160:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v10, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v26, "HMac-Whirlpool"

    const-string v20, "whirlpool"

    const/16 v21, 0xa

    const-string v22, "Whirlpool"

    const-string v24, "WHIRLPOOL"

    const/16 v25, 0x40

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v27}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v10, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->whirlpool:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    new-instance v20, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const-string v18, "HmacSHA224"

    const/16 v19, 0x1

    const-string v12, "sha224"

    const/16 v13, 0xb

    const-string v14, "SHA-224"

    const/4 v15, -0x1

    const-string v16, "SHA224"

    const/16 v17, 0x1c

    move-object/from16 v11, v20

    invoke-direct/range {v11 .. v19}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V

    sput-object v20, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha224:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/16 v11, 0xc

    new-array v11, v11, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v0, v11, v9

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    const/16 v0, 0xb

    aput-object v20, v11, v0

    sput-object v11, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    iput-object p5, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    iput p6, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    iput-object p7, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    iput-boolean p8, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "hash algorithm not found"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromEcmaId(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "hash algorithm not found"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 5

    invoke-static {}, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "hash algorithm not found"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method
