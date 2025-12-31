.class public Lorg/h2/tools/Csv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/tools/SimpleRowSource;


# instance fields
.field private caseSensitiveColumnNames:Z

.field private characterSet:Ljava/lang/String;

.field private columnNames:[Ljava/lang/String;

.field private endOfFile:Z

.field private endOfLine:Z

.field private escapeCharacter:C

.field private fieldDelimiter:C

.field private fieldSeparatorRead:C

.field private fieldSeparatorWrite:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private input:Ljava/io/Reader;

.field private inputBuffer:[C

.field private inputBufferEnd:I

.field private inputBufferPos:I

.field private inputBufferStart:I

.field private lineComment:C

.field private lineSeparator:Ljava/lang/String;

.field private nullString:Ljava/lang/String;

.field private output:Ljava/io/Writer;

.field private preserveWhitespace:Z

.field private writeColumnHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/h2/engine/SysProperties;->FILE_ENCODING:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/tools/Csv;->characterSet:Ljava/lang/String;

    const/16 v0, 0x22

    iput-char v0, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    iput-char v0, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    const/16 v0, 0x2c

    iput-char v0, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    const-string v0, ","

    iput-object v0, p0, Lorg/h2/tools/Csv;->fieldSeparatorWrite:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/tools/Csv;->writeColumnHeader:Z

    sget-object v0, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/tools/Csv;->lineSeparator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    return-void
.end method

.method private static convertException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 1

    const v0, 0x15fac

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-char v0, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-char v0, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    iget-char v1, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-eq v3, v4, :cond_2

    iget-char v4, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    if-ne v3, v4, :cond_3

    :cond_2
    iget-char v4, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Csv;->fileName:Ljava/lang/String;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/h2/tools/Csv;->characterSet:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initRead()V
    .locals 3

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Csv;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/h2/tools/Csv;->characterSet:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/tools/Csv;->close()V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    :cond_1
    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const v1, 0xfeff

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    :cond_2
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    iget-object v0, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/h2/tools/Csv;->readHeader()V

    :cond_3
    return-void
.end method

.method private initWrite()V
    .locals 4

    iget-object v0, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/h2/tools/Csv;->fileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/h2/tools/Csv;->characterSet:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/tools/Csv;->close()V

    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private static varargs isParam(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isSimpleColumnName(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-nez v2, :cond_0

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_0
    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private makeColumnNamesUnique()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private pushBack()V
    .locals 1

    iget v0, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    return-void
.end method

.method private readBuffer()I
    .locals 7

    iget-boolean v0, p0, Lorg/h2/tools/Csv;->endOfFile:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    iget v3, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_2

    iget-object v4, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    add-int/lit16 v5, v3, 0x1000

    array-length v6, v4

    if-le v5, v6, :cond_1

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [C

    iput-object v5, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    :cond_1
    iget-object v5, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    invoke-static {v4, v0, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    move v2, v3

    :cond_3
    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    iget-object v3, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v1, :cond_4

    const/16 v0, -0x400

    iput v0, p0, Lorg/h2/tools/Csv;->inputBufferEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/tools/Csv;->endOfFile:Z

    iget v2, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    return v1

    :cond_4
    add-int/2addr v2, v0

    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferEnd:I

    iget-object v0, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    iget v1, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    aget-char v0, v0, v1

    return v0
.end method

.method private readChar()I
    .locals 3

    iget v0, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    iget v1, p0, Lorg/h2/tools/Csv;->inputBufferEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/tools/Csv;->readBuffer()I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    aget-char v0, v1, v0

    return v0
.end method

.method private readHeader()V
    .locals 4

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COLUMN"

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/h2/tools/Csv;->endOfFile:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lorg/h2/tools/Csv;->caseSensitiveColumnNames:Z

    if-nez v2, :cond_4

    invoke-static {v1}, Lorg/h2/tools/Csv;->isSimpleColumnName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    if-eqz v1, :cond_0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private readNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private readResultSet([Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7

    iput-object p1, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/tools/Csv;->initRead()V

    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {p1, p0}, Lorg/h2/tools/SimpleResultSet;-><init>(Lorg/h2/tools/SimpleRowSource;)V

    invoke-direct {p0}, Lorg/h2/tools/Csv;->makeColumnNamesUnique()V

    iget-object v0, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/16 v5, 0xc

    const v6, 0x7fffffff

    invoke-virtual {p1, v4, v5, v6, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private readValue()Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    iget v1, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    iput v1, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    :goto_0
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v1

    iget-char v2, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    const/16 v3, 0x20

    const/4 v4, -0x1

    const/16 v5, 0xd

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ne v1, v2, :cond_a

    iget v1, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    iput v1, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    :cond_0
    :goto_1
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v1

    iget-char v2, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v1

    iget-char v2, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    goto :goto_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-char v2, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v1

    if-gez v1, :cond_1

    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    if-gez v1, :cond_0

    goto :goto_2

    :goto_3
    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    iget v10, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    iget v11, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    sub-int/2addr v11, v10

    sub-int/2addr v11, v2

    invoke-direct {v8, v9, v10, v11}, Ljava/lang/String;-><init>([CII)V

    if-eqz v0, :cond_4

    invoke-direct {p0, v8}, Lorg/h2/tools/Csv;->unEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    iput v4, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    :goto_4
    iget-char v0, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    if-ne v1, v0, :cond_5

    goto :goto_7

    :cond_5
    if-eq v1, v6, :cond_9

    if-ltz v1, :cond_9

    if-ne v1, v5, :cond_6

    goto :goto_6

    :cond_6
    if-eq v1, v3, :cond_8

    const/16 v0, 0x9

    if-ne v1, v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lorg/h2/tools/Csv;->pushBack()V

    goto :goto_7

    :cond_8
    :goto_5
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v1

    goto :goto_4

    :cond_9
    :goto_6
    iput-boolean v7, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    :goto_7
    return-object v8

    :cond_a
    const/4 v2, 0x0

    if-eq v1, v6, :cond_14

    if-ltz v1, :cond_14

    if-ne v1, v5, :cond_b

    goto :goto_9

    :cond_b
    iget-char v8, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    if-ne v1, v8, :cond_c

    return-object v2

    :cond_c
    if-gt v1, v3, :cond_d

    goto :goto_0

    :cond_d
    iget-char v0, p0, Lorg/h2/tools/Csv;->lineComment:C

    if-eqz v0, :cond_10

    if-ne v1, v0, :cond_10

    iput v4, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    :cond_e
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v0

    if-eq v0, v6, :cond_f

    if-ltz v0, :cond_f

    if-ne v0, v5, :cond_e

    :cond_f
    iput-boolean v7, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    return-object v2

    :cond_10
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readChar()I

    move-result v0

    iget-char v1, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    if-ne v0, v1, :cond_11

    goto :goto_8

    :cond_11
    if-eq v0, v6, :cond_12

    if-ltz v0, :cond_12

    if-ne v0, v5, :cond_10

    :cond_12
    iput-boolean v7, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    :goto_8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/tools/Csv;->inputBuffer:[C

    iget v2, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    iget v3, p0, Lorg/h2/tools/Csv;->inputBufferPos:I

    sub-int/2addr v3, v2

    sub-int/2addr v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v1, p0, Lorg/h2/tools/Csv;->preserveWhitespace:Z

    if-nez v1, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_13
    iput v4, p0, Lorg/h2/tools/Csv;->inputBufferStart:I

    invoke-direct {p0, v0}, Lorg/h2/tools/Csv;->readNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_9
    iput-boolean v7, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    return-object v2
.end method

.method private unEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-char v3, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    .line 13
    .line 14
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-gez v3, :cond_0

    .line 19
    .line 20
    iget-char v3, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    .line 21
    .line 22
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-gez v3, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_1
    sub-int v4, v3, v1

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    if-ne v3, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :goto_1
    invoke-static {p1, v1, v0}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 58
    .line 59
    aget-char v1, v2, v1

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v1, v3, 0x2

    .line 65
    .line 66
    goto :goto_0
.end method

.method private writeResultSet(Ljava/sql/ResultSet;)I
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v1, v7}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-interface {v1, v7}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v8

    aput v8, v4, v6

    move v6, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_0
    iget-boolean v1, p0, Lorg/h2/tools/Csv;->writeColumnHeader:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lorg/h2/tools/Csv;->writeRow([Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    aget v7, v4, v6

    packed-switch v7, :pswitch_data_0

    add-int/lit8 v7, v6, 0x1

    invoke-interface {p1, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :pswitch_0
    add-int/lit8 v7, v6, 0x1

    invoke-interface {p1, v7}, Ljava/sql/ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object v7

    goto :goto_3

    :pswitch_1
    add-int/lit8 v7, v6, 0x1

    invoke-interface {p1, v7}, Ljava/sql/ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object v7

    goto :goto_3

    :pswitch_2
    add-int/lit8 v7, v6, 0x1

    invoke-interface {p1, v7}, Ljava/sql/ResultSet;->getDate(I)Ljava/sql/Date;

    move-result-object v7

    :goto_3
    if-nez v7, :cond_2

    move-object v7, v0

    goto :goto_4

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lorg/h2/tools/Csv;->writeRow([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/h2/tools/Csv;->close()V

    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return v1

    :goto_5
    :try_start_1
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-virtual {p0}, Lorg/h2/tools/Csv;->close()V

    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeRow([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/h2/tools/Csv;->fieldSeparatorWrite:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    aget-object v1, p1, v0

    if-eqz v1, :cond_3

    iget-char v2, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    if-eqz v2, :cond_2

    iget-char v2, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :cond_1
    iget-object v2, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-direct {p0, v1}, Lorg/h2/tools/Csv;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-char v1, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    if-eqz v1, :cond_4

    iget-object v2, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    iget-object v2, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    iget-object v0, p0, Lorg/h2/tools/Csv;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-static {v0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Reader;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    iget-object v1, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-static {v1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    return-void
.end method

.method public getCaseSensitiveColumnNames()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/Csv;->caseSensitiveColumnNames:Z

    return v0
.end method

.method public getEscapeCharacter()C
    .locals 1

    iget-char v0, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    return v0
.end method

.method public getFieldDelimiter()C
    .locals 1

    iget-char v0, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    return v0
.end method

.method public getFieldSeparatorRead()C
    .locals 1

    iget-char v0, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    return v0
.end method

.method public getFieldSeparatorWrite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Csv;->fieldSeparatorWrite:Ljava/lang/String;

    return-object v0
.end method

.method public getLineCommentCharacter()C
    .locals 1

    iget-char v0, p0, Lorg/h2/tools/Csv;->lineComment:C

    return v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Csv;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getNullString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreserveWhitespace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/Csv;->preserveWhitespace:Z

    return v0
.end method

.method public getWriteColumnHeader()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/tools/Csv;->writeColumnHeader:Z

    return v0
.end method

.method public read(Ljava/io/Reader;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/h2/tools/Csv;->init(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    invoke-direct {p0, p2}, Lorg/h2/tools/Csv;->readResultSet([Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/h2/tools/Csv;->init(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p2}, Lorg/h2/tools/Csv;->readResultSet([Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    const-string p3, "IOException reading "

    .line 2
    invoke-static {p3, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, p2}, Lorg/h2/tools/Csv;->convertException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public readRow()[Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/h2/tools/Csv;->input:Ljava/io/Reader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Csv;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/tools/Csv;->readValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-boolean v5, p0, Lorg/h2/tools/Csv;->endOfLine:Z

    if-eqz v5, :cond_2

    if-nez v3, :cond_4

    iget-boolean v4, p0, Lorg/h2/tools/Csv;->endOfFile:Z

    if-eqz v4, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-ge v3, v0, :cond_3

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v2, v3

    move v3, v5

    :cond_3
    iget-boolean v4, p0, Lorg/h2/tools/Csv;->endOfLine:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    :cond_4
    return-object v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException reading from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/tools/Csv;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/tools/Csv;->convertException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 3

    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Method is not supported"

    const-string v2, "CSV"

    invoke-direct {v0, v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public setCaseSensitiveColumnNames(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/tools/Csv;->caseSensitiveColumnNames:Z

    return-void
.end method

.method public setEscapeCharacter(C)V
    .locals 0

    iput-char p1, p0, Lorg/h2/tools/Csv;->escapeCharacter:C

    return-void
.end method

.method public setFieldDelimiter(C)V
    .locals 0

    iput-char p1, p0, Lorg/h2/tools/Csv;->fieldDelimiter:C

    return-void
.end method

.method public setFieldSeparatorRead(C)V
    .locals 0

    iput-char p1, p0, Lorg/h2/tools/Csv;->fieldSeparatorRead:C

    return-void
.end method

.method public setFieldSeparatorWrite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Csv;->fieldSeparatorWrite:Ljava/lang/String;

    return-void
.end method

.method public setLineCommentCharacter(C)V
    .locals 0

    iput-char p1, p0, Lorg/h2/tools/Csv;->lineComment:C

    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Csv;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setNullString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/tools/Csv;->nullString:Ljava/lang/String;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_c

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const/4 v8, 0x1

    invoke-static {v6, v8, v8, v7}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    const-string v7, "esc"

    const-string v8, "escapeCharacter"

    const-string v9, "escape"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v5}, Lorg/h2/tools/Csv;->setEscapeCharacter(C)V

    goto/16 :goto_2

    :cond_2
    const-string v7, "fieldDelimiter"

    const-string v8, "fieldDelim"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v5}, Lorg/h2/tools/Csv;->setFieldDelimiter(C)V

    goto/16 :goto_2

    :cond_3
    const-string v7, "fieldSeparator"

    const-string v8, "fieldSep"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v5}, Lorg/h2/tools/Csv;->setFieldSeparatorRead(C)V

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setFieldSeparatorWrite(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v7, "lineComment"

    const-string v8, "lineCommentCharacter"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v5}, Lorg/h2/tools/Csv;->setLineCommentCharacter(C)V

    goto/16 :goto_2

    :cond_5
    const-string v5, "lineSeparator"

    const-string v7, "lineSep"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setLineSeparator(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "null"

    const-string v7, "nullString"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setNullString(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v5, "charset"

    const-string v7, "characterSet"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v2, v4

    goto :goto_2

    :cond_8
    const-string v5, "preserveWhitespace"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setPreserveWhitespace(Z)V

    goto :goto_2

    :cond_9
    const-string v5, "writeColumnHeader"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setWriteColumnHeader(Z)V

    goto :goto_2

    :cond_a
    const-string v5, "caseSensitiveColumnNames"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/h2/tools/Csv;->isParam(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lorg/h2/tools/Csv;->setCaseSensitiveColumnNames(Z)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {v6}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_c
    return-object v2
.end method

.method public setPreserveWhitespace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/tools/Csv;->preserveWhitespace:Z

    return-void
.end method

.method public setWriteColumnHeader(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/tools/Csv;->writeColumnHeader:Z

    return-void
.end method

.method public write(Ljava/io/Writer;Ljava/sql/ResultSet;)I
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/h2/tools/Csv;->output:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lorg/h2/tools/Csv;->writeResultSet(Ljava/sql/ResultSet;)I

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/sql/ResultSet;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/h2/tools/Csv;->init(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lorg/h2/tools/Csv;->initWrite()V

    invoke-direct {p0, p2}, Lorg/h2/tools/Csv;->writeResultSet(Ljava/sql/ResultSet;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    const-string p3, "IOException writing "

    .line 2
    invoke-static {p3, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, p2}, Lorg/h2/tools/Csv;->convertException(Ljava/lang/String;Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public write(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 8
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4}, Lorg/h2/tools/Csv;->write(Ljava/lang/String;Ljava/sql/ResultSet;Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    return p2
.end method
