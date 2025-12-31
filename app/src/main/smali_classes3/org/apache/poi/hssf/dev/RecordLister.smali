.class public Lorg/apache/poi/hssf/dev/RecordLister;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field file:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToHex(B)Ljava/lang/String;
    .locals 2

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    add-int/lit16 p0, p0, 0x100

    .line 4
    .line 5
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    if-ge p0, v1, :cond_1

    .line 12
    .line 13
    const-string p0, "0"

    .line 14
    .line 15
    invoke-static {p0, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    return-object v0
.end method

.method private static formatData([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-le v1, v2, :cond_1

    aget-byte v1, p0, v3

    invoke-static {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    aget-byte v3, p0, v2

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x3

    aget-byte v5, p0, v3

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "  ....  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v5, p0

    add-int/lit8 v5, v5, -0x4

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v5, p0

    sub-int/2addr v5, v3

    aget-byte v3, p0, v5

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, p0

    sub-int/2addr v3, v2

    aget-byte v2, p0, v3

    invoke-static {v2}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v2, p0

    sub-int/2addr v2, v1

    aget-byte p0, p0, v2

    invoke-static {p0}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_2

    aget-byte v1, p0, v3

    invoke-static {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->byteToHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private static formatSID(I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    const-string v2, "0x"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    const/16 v3, 0x30

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    if-ge v2, v4, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const-string v0, " ("

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_1
    if-ge v0, v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v0, ")"

    .line 52
    .line 53
    invoke-static {v1, p0, v0}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method private static formatSize(I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    :goto_0
    const/16 v3, 0x30

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    if-ge v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string v0, " ("

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_1
    if-ge v0, v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v0, ")"

    .line 50
    .line 51
    invoke-static {v1, p0, v0}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hssf/dev/RecordLister;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/RecordLister;-><init>()V

    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/dev/RecordLister;->setFile(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/RecordLister;->run()V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "RecordLister"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Outputs the summary of the records in file order"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "usage: java org.apache.poi.hssf.dev.RecordLister filename"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;Z)V

    :try_start_0
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-direct {v2, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->getNextSid()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->nextRecord()V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v4

    invoke-static {v3}, Lorg/apache/poi/hssf/record/RecordFactory;->getRecordClass(I)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSID(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/poi/hssf/dev/RecordLister;->formatSize(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    const-string v3, "  \t"

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.apache.poi.hssf.record."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_0

    const-string v4, "   "

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/RecordLister;->formatData([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    throw v1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/RecordLister;->file:Ljava/lang/String;

    return-void
.end method
