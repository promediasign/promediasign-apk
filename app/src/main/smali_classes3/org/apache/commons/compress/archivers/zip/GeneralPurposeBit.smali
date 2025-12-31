.class public final Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private numberOfShannonFanoTrees:I

.field private slidingDictionarySize:I

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    return-void
.end method

.method public static parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 3

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    and-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    const/16 v0, 0x2000

    goto :goto_3

    :cond_4
    const/16 v0, 0x1000

    :goto_3
    iput v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    goto :goto_4

    :cond_5
    const/4 p0, 0x2

    :goto_4
    iput p0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GeneralPurposeBit is not Cloneable?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v0, v2, :cond_1

    iget-boolean p1, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getNumberOfShannonFanoTrees()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->numberOfShannonFanoTrees:I

    return v0
.end method

.method public getSlidingDictionarySize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->slidingDictionarySize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xd

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public useDataDescriptor(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return-void
.end method

.method public useEncryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return-void
.end method

.method public useStrongEncryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    :cond_0
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return-void
.end method

.method public usesDataDescriptor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesUTF8ForNames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method
