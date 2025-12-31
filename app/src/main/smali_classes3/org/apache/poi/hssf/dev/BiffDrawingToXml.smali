.class public Lorg/apache/poi/hssf/dev/BiffDrawingToXml;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-sheet-indexes"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object p0, p0, v1

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "sheet list value was not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private static getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-sheet-name"

    invoke-static {v1, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    array-length v3, p0

    if-ge v1, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result p0

    if-eq v2, p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "specified sheet name has not been found in xls file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sheet name param value was not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getInputFileName([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static getOutputFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".xml"

    if-eqz v0, :cond_0

    const-string v0, ".xls"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByIdArray([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getIndexesByName([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isExcludeWorkbookRecords([Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-exclude-workbook"

    invoke-static {v0, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getAttributeIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 5
    .line 6
    const-string v0, "Usage: BiffDrawingToXml [options] inputWorkbook"

    .line 7
    .line 8
    const-string v1, "Options:"

    .line 9
    .line 10
    const-string v2, "  -exclude-workbook            exclude workbook-level records"

    .line 11
    .line 12
    const-string v3, "  -sheet-indexes   <indexes>   output sheets with specified indexes"

    .line 13
    .line 14
    invoke-static {p0, v0, v1, v2, v3}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "  -sheet-namek  <names>        output sheets with specified name"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getInputFileName([Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/io/FileInputStream;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getOutputFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Ljava/io/FileOutputStream;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->isExcludeWorkbookRecords([Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v2, v1, v0, p0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static writeToFile(Ljava/io/OutputStream;Ljava/io/InputStream;Z[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getInternalWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    const/16 v1, 0xeb

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/DrawingGroupRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<workbook>\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->decode()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/ddf/EscherRecord;

    const-string v2, "\t"

    invoke-virtual {p2, v2}, Lorg/apache/poi/ddf/EscherRecord;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p3, v0}, Lorg/apache/poi/hssf/dev/BiffDrawingToXml;->getSheetsIndexes([Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v2, "\t<sheet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object p3

    const-string v3, "\t\t"

    invoke-virtual {p3, v3}, Lorg/apache/poi/hssf/record/EscherAggregate;->toXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\t</sheet"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "</workbook>\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->close()V

    return-void
.end method
