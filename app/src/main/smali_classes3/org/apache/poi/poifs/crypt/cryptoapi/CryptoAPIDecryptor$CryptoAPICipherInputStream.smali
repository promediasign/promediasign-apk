.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CryptoAPICipherInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;Ljava/io/InputStream;JI)V
    .locals 6

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)I

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JII)V

    return-void
.end method


# virtual methods
.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method
