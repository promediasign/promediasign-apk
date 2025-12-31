.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    return-void
.end method
