.class public Lorg/apache/poi/hssf/extractor/OldExcelExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private biffVersion:I

.field private fileType:I

.field private ris:Lorg/apache/poi/hssf/record/RecordInputStream;

.field private toClose:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v1, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;
    :try_end_1
    .catch Lorg/apache/poi/hssf/OldExcelFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/poi/poifs/filesystem/NotOLE2FileException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_2
    nop

    move-object v0, v1

    goto :goto_3

    :catch_3
    nop

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_1

    :catch_6
    nop

    goto :goto_3

    :catch_7
    nop

    goto :goto_5

    :goto_0
    :try_start_2
    throw p1

    :goto_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    throw p1

    :goto_3
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_1

    :goto_4
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    :goto_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_3
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8

    return-void

    :catch_8
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1

    :catch_9
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Use:"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "   OldExcelExtractor <filename>"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;-><init>(Ljava/io/File;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    return-void
.end method

.method private open(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->hasPOIFSHeader(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw p1

    :cond_1
    new-instance v0, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    iput-object p1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    :goto_1
    return-void
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 2

    .line 2
    :try_start_0
    const-string v0, "Book"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lorg/apache/poi/hssf/model/InternalWorkbook;->WORKBOOK_DIR_ENTRY_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->prepare()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No Excel 5/95 Book stream found"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private open(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->open(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x9

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x209

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x409

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x809

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v2, "File does not begin with a BOF, found sid of "

    .line 43
    .line 44
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    const/4 v0, 0x4

    .line 53
    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v0, 0x3

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v0, 0x2

    .line 59
    goto :goto_0

    .line 60
    :goto_1
    new-instance v0, Lorg/apache/poi/hssf/record/BOFRecord;

    .line 61
    .line 62
    iget-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/record/BOFRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/BOFRecord;->getType()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    const-string v1, "File contains no records!"

    .line 77
    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->toClose:Ljava/io/Closeable;

    :cond_0
    return-void
.end method

.method public getBiffVersion()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->fileType:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    const/4 v4, 0x4

    const/16 v5, 0xa

    if-eq v3, v4, :cond_9

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x42

    if-eq v3, v4, :cond_7

    const/16 v4, 0x85

    if-eq v3, v4, :cond_6

    const/16 v4, 0x27e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x406

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    const/16 v4, 0x203

    if-eq v3, v4, :cond_1

    const/16 v4, 0x204

    if-eq v3, v4, :cond_9

    const/16 v4, 0x206

    if-eq v3, v4, :cond_3

    const/16 v4, 0x207

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/apache/poi/hssf/record/NumberRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/NumberRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/NumberRecord;->getValue()D

    move-result-wide v3

    goto :goto_2

    :cond_2
    new-instance v3, Lorg/apache/poi/hssf/record/OldStringRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldStringRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldStringRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldStringRecord;->getString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->biffVersion:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    new-instance v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/FormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getCachedResultType()I

    move-result v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v5}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v3

    :goto_2
    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->handleNumericCell(Ljava/lang/StringBuffer;D)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lorg/apache/poi/hssf/record/OldFormulaRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldFormulaRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getCachedResultType()I

    move-result v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v5}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v3

    goto :goto_2

    :cond_5
    new-instance v3, Lorg/apache/poi/hssf/record/RKRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/RKRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RKRecord;->getRKNumber()D

    move-result-wide v3

    goto :goto_2

    :cond_6
    new-instance v3, Lorg/apache/poi/hssf/record/OldSheetRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldSheetRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldSheetRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    const-string v4, "Sheet: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldSheetRecord;->getSheetname()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    new-instance v2, Lorg/apache/poi/hssf/record/CodepageRecord;

    iget-object v3, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/CodepageRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Encryption not supported for Old Excel files"

    invoke-direct {v0, v1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v3, Lorg/apache/poi/hssf/record/OldLabelRecord;

    iget-object v4, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/OldLabelRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/OldLabelRecord;->setCodePage(Lorg/apache/poi/hssf/record/CodepageRecord;)V

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/OldLabelRecord;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->close()V

    iput-object v1, p0, Lorg/apache/poi/hssf/extractor/OldExcelExtractor;->ris:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleNumericCell(Ljava/lang/StringBuffer;D)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method
