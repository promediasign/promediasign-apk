.class final Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/RecordFactoryInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamEncryptionInfo"
.end annotation


# instance fields
.field private final _filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

.field private final _hasBOFRecord:Z

.field private final _initialRecordsSize:I

.field private final _lastRecord:Lorg/apache/poi/hssf/record/Record;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/record/RecordInputStream;",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v2, v1, Lorg/apache/poi/hssf/record/BOFRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v0, v1, Lorg/apache/poi/hssf/record/WriteProtectRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-static {p1}, Lorg/apache/poi/hssf/record/RecordFactory;->createSingleRecord(Lorg/apache/poi/hssf/record/RecordInputStream;)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordBase;->getRecordSize()I

    move-result v0

    add-int/2addr v0, v2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    instance-of p1, v1, Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz p1, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/apache/poi/hssf/record/FilePassRecord;

    :cond_1
    instance-of p1, v1, Lorg/apache/poi/hssf/record/EOFRecord;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nothing between BOF and EOF"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    :cond_4
    :goto_1
    iput v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    iput-object v3, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    return-void
.end method


# virtual methods
.method public createDecryptingStream(Ljava/io/InputStream;)Lorg/apache/poi/hssf/record/RecordInputStream;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    invoke-static {}, Lorg/apache/poi/hssf/record/crypto/Biff8EncryptionKey;->getCurrentUserPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VelvetSweatshop"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FilePassRecord;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->verifyPassword(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Default"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string v1, "Supplied"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " password is invalid for salt/verifier/verifierHash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    iget v2, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_initialRecordsSize:I

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/poi/poifs/crypt/EncryptionInfo;I)V

    return-object v1

    :goto_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getLastRecord()Lorg/apache/poi/hssf/record/Record;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_lastRecord:Lorg/apache/poi/hssf/record/Record;

    return-object v0
.end method

.method public hasBOFRecord()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_hasBOFRecord:Z

    return v0
.end method

.method public hasEncryption()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/RecordFactoryInputStream$StreamEncryptionInfo;->_filePassRec:Lorg/apache/poi/hssf/record/FilePassRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
