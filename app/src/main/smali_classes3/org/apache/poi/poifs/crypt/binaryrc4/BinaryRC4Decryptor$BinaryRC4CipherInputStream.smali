.class Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryRC4CipherInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Ljava/io/InputStream;II)V
    .locals 6

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    int-to-long v2, p3

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;)I

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;)I

    move-result p1

    invoke-direct {p0, p2, p3, p4, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JI)V

    return-void
.end method


# virtual methods
.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method
