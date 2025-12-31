.class public final enum Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/crypt/CipherAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field public static final enum rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field public final allowedKeySize:[I

.field public final blockSize:I

.field public final defaultKeySize:I

.field public final ecmaId:I

.field public final encryptedVerifierHashLength:I

.field public final jceId:Ljava/lang/String;

.field public final needsBouncyCastle:Z

.field public final provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field public final xmlId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v3, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    const/16 v13, 0x80

    const/16 v14, 0x40

    const/16 v15, 0xc

    new-array v7, v15, [I

    fill-array-data v7, :array_0

    const-string v10, "RC4"

    const/4 v11, 0x0

    const-string v1, "rc4"

    const/4 v2, 0x0

    const-string v4, "RC4"

    const/16 v5, 0x6801

    const/16 v6, 0x40

    const/4 v8, -0x1

    const/16 v9, 0x14

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v12, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v1, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    filled-new-array {v13}, [I

    move-result-object v23

    const-string v26, "AES"

    const/16 v27, 0x0

    const-string v17, "aes128"

    const/16 v18, 0x1

    const-string v20, "AES"

    const/16 v21, 0x660e

    const/16 v22, 0x80

    const/16 v24, 0x10

    const/16 v25, 0x20

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    invoke-direct/range {v16 .. v27}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/16 v3, 0xc0

    filled-new-array {v3}, [I

    move-result-object v23

    const-string v26, "AES"

    const-string v17, "aes192"

    const/16 v18, 0x2

    const-string v20, "AES"

    const/16 v21, 0x660f

    const/16 v22, 0xc0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v27}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/16 v5, 0x100

    filled-new-array {v5}, [I

    move-result-object v23

    const-string v26, "AES"

    const-string v17, "aes256"

    const/16 v18, 0x3

    const-string v20, "AES"

    const/16 v21, 0x6610

    const/16 v22, 0x100

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v27}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-array v5, v15, [I

    fill-array-data v5, :array_1

    const-string v38, "RC2"

    const/16 v39, 0x0

    const-string v29, "rc2"

    const/16 v30, 0x4

    const/16 v31, 0x0

    const-string v32, "RC2"

    const/16 v33, -0x1

    const/16 v34, 0x80

    const/16 v36, 0x8

    const/16 v37, 0x14

    move-object/from16 v28, v1

    move-object/from16 v35, v5

    invoke-direct/range {v28 .. v39}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    filled-new-array {v14}, [I

    move-result-object v22

    const-string v25, "DES"

    const/16 v26, 0x0

    const-string v16, "des"

    const/16 v17, 0x5

    const/16 v18, 0x0

    const-string v19, "DES"

    const/16 v20, -0x1

    const/16 v21, 0x40

    const/16 v23, 0x8

    const/16 v24, 0x20

    move-object v15, v5

    invoke-direct/range {v15 .. v26}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    filled-new-array {v3}, [I

    move-result-object v34

    const-string v37, "3DES"

    const/16 v38, 0x0

    const-string v28, "des3"

    const/16 v29, 0x6

    const/16 v30, 0x0

    const-string v31, "DESede"

    const/16 v32, -0x1

    const/16 v33, 0xc0

    const/16 v35, 0x8

    const/16 v36, 0x20

    move-object/from16 v27, v6

    invoke-direct/range {v27 .. v38}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v6, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    filled-new-array {v13}, [I

    move-result-object v21

    const-string v24, "3DES_112"

    const/16 v25, 0x1

    const-string v15, "des3_112"

    const/16 v16, 0x7

    const/16 v17, 0x0

    const-string v18, "DESede"

    const/16 v19, -0x1

    const/16 v20, 0x80

    const/16 v22, 0x8

    const/16 v23, 0x20

    move-object v14, v3

    invoke-direct/range {v14 .. v25}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->des3_112:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    new-instance v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/16 v8, 0xc00

    const/16 v9, 0x1000

    const/16 v10, 0x400

    const/16 v11, 0x800

    filled-new-array {v10, v11, v8, v9}, [I

    move-result-object v33

    const-string v36, ""

    const/16 v37, 0x0

    const-string v27, "rsa"

    const/16 v28, 0x8

    const/16 v29, 0x0

    const-string v30, "RSA"

    const/16 v31, -0x1

    const/16 v32, 0x400

    const/16 v34, -0x1

    const/16 v35, -0x1

    move-object/from16 v26, v7

    invoke-direct/range {v26 .. v37}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V

    sput-object v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rsa:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/16 v8, 0x9

    new-array v8, v8, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v3, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    sput-object v8, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void

    :array_0
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x30
        0x38
        0x40
        0x48
        0x50
        0x58
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/poi/poifs/crypt/CipherProvider;Ljava/lang/String;II[IIILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/CipherProvider;",
            "Ljava/lang/String;",
            "II[III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->provider:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    iput p5, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    iput p6, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    iput p8, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    iput p9, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    iput-object p10, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    iput-boolean p11, p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z

    return-void
.end method

.method public static fromEcmaId(I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 5

    .line 1
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    .line 20
    .line 21
    const-string v1, "cipher algorithm "

    .line 22
    .line 23
    const-string v2, " not found"

    .line 24
    .line 25
    invoke-static {p0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public static fromXmlId(Ljava/lang/String;I)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 9

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->xmlId:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, v4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    if-ne v8, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cipher algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->$VALUES:[Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method
