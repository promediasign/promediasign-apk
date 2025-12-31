.class Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

.field final synthetic val$header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

.field final synthetic val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field final synthetic val$verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->this$0:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptionFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$header:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;->val$verifier:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method
