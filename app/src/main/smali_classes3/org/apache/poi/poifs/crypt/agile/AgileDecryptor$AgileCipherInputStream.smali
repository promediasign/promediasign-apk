.class Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AgileCipherInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    const/16 p1, 0x1000

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JI)V

    return-void
.end method


# virtual methods
.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;IZLorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method
