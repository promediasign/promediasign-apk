.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SheetRefLoader"
.end annotation


# instance fields
.field sheets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private addWorksheet([B)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryToAddWorksheet([B)V
    :try_end_0
    .catch Lorg/apache/poi/xssf/binary/XSSFBParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->tryOldFormat([B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;->access$300()Lorg/apache/poi/util/POILogger;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "This file was written with a beta version of Excel. POI will try to parse the file as a regular xlsb."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    throw v0
.end method

.method private tryOldFormat([B)Z
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-ltz v4, :cond_2

    .line 12
    .line 13
    const-wide/32 v2, 0xffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-gtz v4, :cond_2

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0xc

    .line 26
    .line 27
    invoke-static {p1, v1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    add-int/2addr v2, v1

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v2

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-lez v2, :cond_0

    .line 60
    .line 61
    iget-object v2, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    .line 62
    .line 63
    new-instance v5, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    .line 64
    .line 65
    invoke-direct {v5, v1, v0}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    array-length p1, p1

    .line 72
    if-ne v4, p1, :cond_1

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_1
    return v3

    .line 77
    :cond_2
    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 78
    .line 79
    const-string v2, "table id out of range: "

    .line 80
    .line 81
    invoke-static {v2, v0, v1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-direct {p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1
.end method

.method private tryToAddWorksheet([B)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x1

    .line 11
    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-ltz v5, :cond_1

    .line 15
    .line 16
    const-wide/32 v3, 0xffff

    .line 17
    .line 18
    .line 19
    cmp-long v5, v1, v3

    .line 20
    .line 21
    if-gtz v5, :cond_1

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x8

    .line 29
    .line 30
    invoke-static {p1, v2, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/2addr v3, v2

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v3, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_0

    .line 60
    .line 61
    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    .line 62
    .line 63
    new-instance v1, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;

    .line 64
    .line 65
    invoke-direct {v1, v2, p1}, Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance p1, Lorg/apache/poi/xssf/binary/XSSFBParseException;

    .line 73
    .line 74
    const-string v0, "table id out of range: "

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-direct {p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParseException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method


# virtual methods
.method public getSheets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/eventusermodel/XSSFReader$XSSFSheetRef;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->sheets:Ljava/util/List;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtBundleSh:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$SheetRefLoader;->addWorksheet([B)V

    :cond_0
    return-void
.end method
