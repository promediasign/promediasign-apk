.class public final Lorg/apache/poi/util/OOXMLLite;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _destDest:Ljava/io/File;

.field private _ooxmlJar:Ljava/io/File;

.field private _testDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    return-void
.end method

.method private static checkForTestAnnotation(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    const-class v6, Lorg/junit/Test;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    const-class v6, Lorg/junit/Test;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not derive from TestCase and does not have a @Test annotation"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method private static collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    invoke-static {p0, v2, p2, p3, p4}, Lorg/apache/poi/util/OOXMLLite;->collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Inner class "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not included"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, ".class"

    const-string p3, ""

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Ljunit/framework/TestCase;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p1}, Lorg/apache/poi/util/OOXMLLite;->checkForTestAnnotation(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Class "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not in classpath"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string p1, "Can\'t create destination directory: "

    .line 21
    .line 22
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->h(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method private static getLoadedClasses(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/util/OOXMLLite$1;

    invoke-direct {v0}, Lorg/apache/poi/util/OOXMLLite$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    return-object v1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    move-object v2, v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    aget-object v4, p0, v3

    const-string v5, "-dest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    aget-object v0, p0, v3

    goto :goto_1

    :cond_0
    aget-object v4, p0, v3

    const-string v5, "-test"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    aget-object v1, p0, v3

    goto :goto_1

    :cond_1
    aget-object v4, p0, v3

    const-string v5, "-ooxml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, p0, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/poi/util/OOXMLLite;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/poi/util/OOXMLLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/util/OOXMLLite;->build()V

    return-void
.end method


# virtual methods
.method public build()V
    .locals 14

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x28

    .line 7
    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "BaseTestXWorkbook"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 14
    .line 15
    const-string v2, "BaseTestXSheet"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v2, v1, v4

    .line 19
    .line 20
    const-string v2, "BaseTestXRow"

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    aput-object v2, v1, v5

    .line 24
    .line 25
    const-string v2, "BaseTestXCell"

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    aput-object v2, v1, v5

    .line 29
    .line 30
    const-string v2, "BaseTestXSSFPivotTable"

    .line 31
    .line 32
    const/4 v5, 0x4

    .line 33
    aput-object v2, v1, v5

    .line 34
    .line 35
    const-string v2, "TestSXSSFWorkbook\\$\\d"

    .line 36
    .line 37
    const/4 v5, 0x5

    .line 38
    aput-object v2, v1, v5

    .line 39
    .line 40
    const-string v2, "TestUnfixedBugs"

    .line 41
    .line 42
    const/4 v5, 0x6

    .line 43
    aput-object v2, v1, v5

    .line 44
    .line 45
    const-string v2, "MemoryUsage"

    .line 46
    .line 47
    const/4 v5, 0x7

    .line 48
    aput-object v2, v1, v5

    .line 49
    .line 50
    const-string v2, "TestDataProvider"

    .line 51
    .line 52
    const/16 v5, 0x8

    .line 53
    .line 54
    aput-object v2, v1, v5

    .line 55
    .line 56
    const-string v2, "TestDataSamples"

    .line 57
    .line 58
    const/16 v5, 0x9

    .line 59
    .line 60
    aput-object v2, v1, v5

    .line 61
    .line 62
    const-string v2, "All.+Tests"

    .line 63
    .line 64
    const/16 v5, 0xa

    .line 65
    .line 66
    aput-object v2, v1, v5

    .line 67
    .line 68
    const-string v2, "ZipFileAssert"

    .line 69
    .line 70
    const/16 v5, 0xb

    .line 71
    .line 72
    aput-object v2, v1, v5

    .line 73
    .line 74
    const-string v2, "AesZipFileZipEntrySource"

    .line 75
    .line 76
    const/16 v5, 0xc

    .line 77
    .line 78
    aput-object v2, v1, v5

    .line 79
    .line 80
    const-string v2, "TempFileRecordingSXSSFWorkbookWithCustomZipEntrySource"

    .line 81
    .line 82
    const/16 v5, 0xd

    .line 83
    .line 84
    aput-object v2, v1, v5

    .line 85
    .line 86
    const-string v2, "PkiTestUtils"

    .line 87
    .line 88
    const/16 v5, 0xe

    .line 89
    .line 90
    aput-object v2, v1, v5

    .line 91
    .line 92
    const-string v2, "TestCellFormatPart\\$\\d"

    .line 93
    .line 94
    const/16 v5, 0xf

    .line 95
    .line 96
    aput-object v2, v1, v5

    .line 97
    .line 98
    const-string v2, "TestSignatureInfo\\$\\d"

    .line 99
    .line 100
    const/16 v5, 0x10

    .line 101
    .line 102
    aput-object v2, v1, v5

    .line 103
    .line 104
    const-string v2, "TestCertificateEncryption\\$CertData"

    .line 105
    .line 106
    const/16 v5, 0x11

    .line 107
    .line 108
    aput-object v2, v1, v5

    .line 109
    .line 110
    const-string v2, "TestPOIXMLDocument\\$OPCParser"

    .line 111
    .line 112
    const/16 v5, 0x12

    .line 113
    .line 114
    aput-object v2, v1, v5

    .line 115
    .line 116
    const-string v2, "TestPOIXMLDocument\\$TestFactory"

    .line 117
    .line 118
    const/16 v5, 0x13

    .line 119
    .line 120
    aput-object v2, v1, v5

    .line 121
    .line 122
    const-string v2, "TestXSLFTextParagraph\\$DrawTextParagraphProxy"

    .line 123
    .line 124
    const/16 v5, 0x14

    .line 125
    .line 126
    aput-object v2, v1, v5

    .line 127
    .line 128
    const-string v2, "TestXSSFExportToXML\\$\\d"

    .line 129
    .line 130
    const/16 v5, 0x15

    .line 131
    .line 132
    aput-object v2, v1, v5

    .line 133
    .line 134
    const-string v2, "TestXSSFExportToXML\\$DummyEntityResolver"

    .line 135
    .line 136
    const/16 v5, 0x16

    .line 137
    .line 138
    aput-object v2, v1, v5

    .line 139
    .line 140
    const-string v2, "TestFormulaEvaluatorOnXSSF\\$Result"

    .line 141
    .line 142
    const/16 v5, 0x17

    .line 143
    .line 144
    aput-object v2, v1, v5

    .line 145
    .line 146
    const-string v2, "TestFormulaEvaluatorOnXSSF\\$SS"

    .line 147
    .line 148
    const/16 v5, 0x18

    .line 149
    .line 150
    aput-object v2, v1, v5

    .line 151
    .line 152
    const-string v2, "TestMultiSheetFormulaEvaluatorOnXSSF\\$Result"

    .line 153
    .line 154
    const/16 v5, 0x19

    .line 155
    .line 156
    aput-object v2, v1, v5

    .line 157
    .line 158
    const-string v2, "TestMultiSheetFormulaEvaluatorOnXSSF\\$SS"

    .line 159
    .line 160
    const/16 v5, 0x1a

    .line 161
    .line 162
    aput-object v2, v1, v5

    .line 163
    .line 164
    const-string v2, "TestXSSFBugs\\$\\d"

    .line 165
    .line 166
    const/16 v5, 0x1b

    .line 167
    .line 168
    aput-object v2, v1, v5

    .line 169
    .line 170
    const-string v2, "AddImageBench"

    .line 171
    .line 172
    const/16 v5, 0x1c

    .line 173
    .line 174
    aput-object v2, v1, v5

    .line 175
    .line 176
    const-string v2, "AddImageBench_jmhType_B\\d"

    .line 177
    .line 178
    const/16 v5, 0x1d

    .line 179
    .line 180
    aput-object v2, v1, v5

    .line 181
    .line 182
    const-string v2, "AddImageBench_benchCreatePicture_jmhTest"

    .line 183
    .line 184
    const/16 v5, 0x1e

    .line 185
    .line 186
    aput-object v2, v1, v5

    .line 187
    .line 188
    const-string v2, "TestEvilUnclosedBRFixingInputStream\\$EvilUnclosedBRFixingInputStream"

    .line 189
    .line 190
    const/16 v5, 0x1f

    .line 191
    .line 192
    aput-object v2, v1, v5

    .line 193
    .line 194
    const-string v2, "TempFileRecordingSXSSFWorkbookWithCustomZipEntrySource\\$TempFileRecordingSheetDataWriterWithDecorator"

    .line 195
    .line 196
    const/16 v5, 0x20

    .line 197
    .line 198
    aput-object v2, v1, v5

    .line 199
    .line 200
    const-string v2, "TestXSSFBReader\\$1"

    .line 201
    .line 202
    const/16 v5, 0x21

    .line 203
    .line 204
    aput-object v2, v1, v5

    .line 205
    .line 206
    const-string v2, "TestXSSFBReader\\$TestSheetHandler"

    .line 207
    .line 208
    const/16 v5, 0x22

    .line 209
    .line 210
    aput-object v2, v1, v5

    .line 211
    .line 212
    const-string v2, "TestFormulaEvaluatorOnXSSF\\$1"

    .line 213
    .line 214
    const/16 v5, 0x23

    .line 215
    .line 216
    aput-object v2, v1, v5

    .line 217
    .line 218
    const-string v2, "TestMultiSheetFormulaEvaluatorOnXSSF\\$1"

    .line 219
    .line 220
    const/16 v5, 0x24

    .line 221
    .line 222
    aput-object v2, v1, v5

    .line 223
    .line 224
    const-string v2, "TestZipPackagePropertiesMarshaller\\$1"

    .line 225
    .line 226
    const/16 v5, 0x25

    .line 227
    .line 228
    aput-object v2, v1, v5

    .line 229
    .line 230
    const-string v2, "SLCommonUtils"

    .line 231
    .line 232
    const/16 v5, 0x26

    .line 233
    .line 234
    aput-object v2, v1, v5

    .line 235
    .line 236
    const-string v2, "TestPPTX2PNG\\$1"

    .line 237
    .line 238
    const/16 v5, 0x27

    .line 239
    .line 240
    aput-object v2, v1, v5

    .line 241
    .line 242
    const-string v2, "|"

    .line 243
    .line 244
    invoke-static {v2, v1}, Lorg/apache/poi/util/StringUtil;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 249
    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v6, "Collecting unit tests from "

    .line 253
    .line 254
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v6, p0, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    .line 258
    .line 259
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v5, p0, Lorg/apache/poi/util/OOXMLLite;->_testDir:Ljava/io/File;

    .line 270
    .line 271
    const-string v6, ".+("

    .line 272
    .line 273
    const-string v7, ").class"

    .line 274
    .line 275
    invoke-static {v6, v1, v7}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v6, ".+.class$"

    .line 280
    .line 281
    invoke-static {v5, v5, v0, v6, v1}, Lorg/apache/poi/util/OOXMLLite;->collectTests(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v5, "Found "

    .line 287
    .line 288
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v5, " classes"

    .line 299
    .line 300
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lorg/junit/runner/JUnitCore;

    .line 311
    .line 312
    invoke-direct {v1}, Lorg/junit/runner/JUnitCore;-><init>()V

    .line 313
    .line 314
    .line 315
    new-instance v5, Lorg/junit/internal/TextListener;

    .line 316
    .line 317
    invoke-direct {v5, v2}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v5}, Lorg/junit/runner/JUnitCore;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    new-array v5, v5, [Ljava/lang/Class;

    .line 328
    .line 329
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, [Ljava/lang/Class;

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Lorg/junit/runner/JUnitCore;->run([Ljava/lang/Class;)Lorg/junit/runner/Result;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lorg/junit/runner/Result;->wasSuccessful()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_4

    .line 344
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v1, "Copying classes to "

    .line 348
    .line 349
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    .line 353
    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v0, p0, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Lorg/apache/poi/util/OOXMLLite;->getLoadedClasses(Ljava/lang/String;)Ljava/util/Map;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_1

    .line 387
    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    check-cast v1, Ljava/lang/Class;

    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const/16 v6, 0x2e

    .line 404
    .line 405
    const/16 v7, 0x2f

    .line 406
    .line 407
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v2, ".class"

    .line 415
    .line 416
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    new-instance v8, Ljava/io/File;

    .line 424
    .line 425
    iget-object v9, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    .line 426
    .line 427
    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v10, "/"

    .line 433
    .line 434
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-static {v5, v8}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_0

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    array-length v5, v1

    .line 462
    const/4 v8, 0x0

    .line 463
    :goto_0
    if-ge v8, v5, :cond_0

    .line 464
    .line 465
    aget-object v9, v1, v8

    .line 466
    .line 467
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v11

    .line 471
    new-instance v12, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v11, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v11

    .line 480
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v11

    .line 490
    new-instance v12, Ljava/io/File;

    .line 491
    .line 492
    iget-object v13, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    .line 493
    .line 494
    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    new-instance v13, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v11

    .line 509
    invoke-virtual {v9, v11}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    invoke-static {v9, v12}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 514
    .line 515
    .line 516
    add-int/2addr v8, v4

    .line 517
    goto :goto_0

    .line 518
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 519
    .line 520
    const-string v1, "Copying .xsb resources"

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    new-instance v0, Ljava/util/jar/JarFile;

    .line 526
    .line 527
    iget-object v1, p0, Lorg/apache/poi/util/OOXMLLite;->_ooxmlJar:Ljava/io/File;

    .line 528
    .line 529
    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    .line 530
    .line 531
    .line 532
    const-string v1, "schemaorg_apache_xmlbeans/(system|element)/.*\\.xsb"

    .line 533
    .line 534
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    :try_start_0
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-eqz v3, :cond_3

    .line 547
    .line 548
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v3

    .line 552
    check-cast v3, Ljava/util/jar/JarEntry;

    .line 553
    .line 554
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 563
    .line 564
    .line 565
    move-result v4

    .line 566
    if-eqz v4, :cond_2

    .line 567
    .line 568
    new-instance v4, Ljava/io/File;

    .line 569
    .line 570
    iget-object v5, p0, Lorg/apache/poi/util/OOXMLLite;->_destDest:Ljava/io/File;

    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v6

    .line 576
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    invoke-static {v3, v4}, Lorg/apache/poi/util/OOXMLLite;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .line 585
    .line 586
    goto :goto_1

    .line 587
    :catchall_0
    move-exception v1

    .line 588
    goto :goto_2

    .line 589
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 594
    .line 595
    .line 596
    throw v1

    .line 597
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 598
    .line 599
    const-string v1, "Tests did not succeed, cannot build ooxml-lite jar"

    .line 600
    .line 601
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    throw v0
.end method
