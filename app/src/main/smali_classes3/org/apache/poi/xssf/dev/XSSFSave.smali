.class public final Lorg/apache/poi/xssf/dev/XSSFSave;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p0, v1

    .line 7
    .line 8
    invoke-static {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    .line 13
    .line 14
    invoke-direct {v3, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 15
    .line 16
    .line 17
    aget-object v4, p0, v1

    .line 18
    .line 19
    const/16 v5, 0x2e

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    aget-object v6, p0, v1

    .line 31
    .line 32
    const-string v7, "-save.xls"

    .line 33
    .line 34
    invoke-static {v6, v0, v4, v5, v7}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->isMacroEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    const-string v4, "m"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v4, "x"

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v5, Ljava/io/FileOutputStream;

    .line 56
    .line 57
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v5}, Lorg/apache/poi/POIXMLDocument;->write(Ljava/io/OutputStream;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method
