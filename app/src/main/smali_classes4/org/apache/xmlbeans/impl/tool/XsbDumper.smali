.class public Lorg/apache/xmlbeans/impl/tool/XsbDumper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATA_BABE:I = -0x25854542

.field public static final FIELD_GLOBAL:I = 0x1

.field public static final FIELD_LOCALATTR:I = 0x2

.field public static final FIELD_LOCALELT:I = 0x3

.field public static final FIELD_NONE:I = 0x0

.field public static final FILETYPE_SCHEMAATTRIBUTE:I = 0x4

.field public static final FILETYPE_SCHEMAATTRIBUTEGROUP:I = 0x7

.field public static final FILETYPE_SCHEMAELEMENT:I = 0x3

.field public static final FILETYPE_SCHEMAINDEX:I = 0x1

.field public static final FILETYPE_SCHEMAMODELGROUP:I = 0x6

.field public static final FILETYPE_SCHEMAPOINTER:I = 0x5

.field public static final FILETYPE_SCHEMATYPE:I = 0x2

.field public static final FLAG_PART_ABSTRACT:I = 0x80

.field public static final FLAG_PART_BLOCKEXT:I = 0x10

.field public static final FLAG_PART_BLOCKREST:I = 0x20

.field public static final FLAG_PART_BLOCKSUBST:I = 0x40

.field public static final FLAG_PART_FINALEXT:I = 0x100

.field public static final FLAG_PART_FINALREST:I = 0x200

.field public static final FLAG_PART_FIXED:I = 0x4

.field public static final FLAG_PART_NILLABLE:I = 0x8

.field public static final FLAG_PART_SKIPPABLE:I = 0x1

.field public static final FLAG_PROP_ISATTR:I = 0x1

.field public static final FLAG_PROP_JAVAARRAY:I = 0x8

.field public static final FLAG_PROP_JAVAOPTIONAL:I = 0x4

.field public static final FLAG_PROP_JAVASINGLETON:I = 0x2

.field public static final MAJOR_VERSION:I = 0x2

.field public static final MINOR_VERSION:I = 0x18

.field static final SINGLE_ZERO_BYTE:[B

.field static synthetic class$org$apache$xmlbeans$impl$tool$XsbDumper:Ljava/lang/Class;

.field private static final prettyOptions:Lorg/apache/xmlbeans/XmlOptions;


# instance fields
.field private _indent:Ljava/lang/String;

.field _input:Ljava/io/DataInputStream;

.field private _majorver:I

.field private _minorver:I

.field private _out:Ljava/io/PrintStream;

.field private _releaseno:I

.field _stringPool:Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->class$org$apache$xmlbeans$impl$tool$XsbDumper:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.apache.xmlbeans.impl.tool.XsbDumper"

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->class$org$apache$xmlbeans$impl$tool$XsbDumper:Ljava/lang/Class;

    :cond_0
    sput-boolean v1, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->$assertionsDisabled:Z

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v2

    sput-object v2, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->prettyOptions:Lorg/apache/xmlbeans/XmlOptions;

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    sput-object v1, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->SINGLE_ZERO_BYTE:[B

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_out:Ljava/io/PrintStream;

    return-void
.end method

.method public static alwaysString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown frequency code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONSISTENTLY"

    return-object p0

    :cond_1
    const-string p0, "VARIABLE"

    return-object p0

    :cond_2
    const-string p0, "NEVER"

    return-object p0
.end method

.method public static attruseCodeString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown use code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "REQUIRED"

    return-object p0

    :cond_1
    const-string p0, "OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "PROHIBITED"

    return-object p0
.end method

.method public static bigIntegerString(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static complexVarietyString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown complex variety ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MIXED_CONTENT"

    return-object p0

    :cond_1
    const-string p0, "ELEMENT_CONTENT"

    return-object p0

    :cond_2
    const-string p0, "SIMPLE_CONTENT"

    return-object p0

    :cond_3
    const-string p0, "EMPTY_CONTENT"

    return-object p0
.end method

.method public static containerfieldTypeString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown container field type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "FIELD_LOCALELT"

    return-object p0

    :cond_1
    const-string p0, "FIELD_LOCALATTR"

    return-object p0

    :cond_2
    const-string p0, "FIELD_GLOBAL"

    return-object p0

    :cond_3
    const-string p0, "FIELD_NONE"

    return-object p0
.end method

.method private static dump(Ljava/io/File;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/tool/XsbDumper$1;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper$1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/File;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".xsb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    :try_start_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p0, "  "

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpZip(Ljava/io/File;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static dump(Ljava/io/InputStream;)V
    .locals 2

    .line 2
    const-string v0, ""

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static dump(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static dump(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAll()V

    return-void
.end method

.method public static dumpZip(Ljava/io/File;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xsb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "  "

    invoke-static {v1, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static filetypeString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown FILETYPE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FILETYPE_SCHEMAATTRIBUTEGROUP"

    return-object p0

    :pswitch_1
    const-string p0, "FILETYPE_SCHEMAMODELGROUP"

    return-object p0

    :pswitch_2
    const-string p0, "FILETYPE_SCHEMAPOINTER"

    return-object p0

    :pswitch_3
    const-string p0, "FILETYPE_SCHEMAATTRIBUTE"

    return-object p0

    :pswitch_4
    const-string p0, "FILETYPE_SCHEMAELEMENT"

    return-object p0

    :pswitch_5
    const-string p0, "FILETYPE_SCHEMATYPE"

    return-object p0

    :pswitch_6
    const-string p0, "FILETYPE_SCHEMAINDEX"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hex32String(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static jtcString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown java type code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "JAVA_OBJECT"

    return-object p0

    :pswitch_1
    const-string p0, "JAVA_ENUM"

    return-object p0

    :pswitch_2
    const-string p0, "JAVA_CALENDAR"

    return-object p0

    :pswitch_3
    const-string p0, "JAVA_LIST"

    return-object p0

    :pswitch_4
    const-string p0, "JAVA_QNAME"

    return-object p0

    :pswitch_5
    const-string p0, "JAVA_DATE"

    return-object p0

    :pswitch_6
    const-string p0, "JAVA_GDURATION"

    return-object p0

    :pswitch_7
    const-string p0, "JAVA_GDATE"

    return-object p0

    :pswitch_8
    const-string p0, "JAVA_BYTE_ARRAY"

    return-object p0

    :pswitch_9
    const-string p0, "JAVA_STRING"

    return-object p0

    :pswitch_a
    const-string p0, "JAVA_BIG_INTEGER"

    return-object p0

    :pswitch_b
    const-string p0, "JAVA_BIG_DECIMAL"

    return-object p0

    :pswitch_c
    const-string p0, "JAVA_LONG"

    return-object p0

    :pswitch_d
    const-string p0, "JAVA_INT"

    return-object p0

    :pswitch_e
    const-string p0, "JAVA_SHORT"

    return-object p0

    :pswitch_f
    const-string p0, "JAVA_BYTE"

    return-object p0

    :pswitch_10
    const-string p0, "JAVA_DOUBLE"

    return-object p0

    :pswitch_11
    const-string p0, "JAVA_FLOAT"

    return-object p0

    :pswitch_12
    const-string p0, "JAVA_BOOLEAN"

    return-object p0

    :pswitch_13
    const-string p0, "XML_OBJECT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->printUsage()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_0
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/io/File;

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dump(Ljava/io/File;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static particleTypeString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown particle type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "WILDCARD"

    return-object p0

    :cond_1
    const-string p0, "ELEMENT"

    return-object p0

    :cond_2
    const-string p0, "SEQUENCE"

    return-object p0

    :cond_3
    const-string p0, "CHOICE"

    return-object p0

    :cond_4
    const-string p0, "ALL"

    return-object p0
.end method

.method public static particleflagsString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FLAG_PART_SKIPPABLE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    const-string v1, "FLAG_PART_FIXED | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2

    const-string v1, "FLAG_PART_NILLABLE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    const-string v1, "FLAG_PART_BLOCKEXT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_4

    const-string v1, "FLAG_PART_BLOCKREST | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_5

    const-string v1, "FLAG_PART_BLOCKSUBST | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_6

    const-string v1, "FLAG_PART_ABSTRACT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_7

    const-string v1, "FLAG_PART_FINALEXT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8

    const-string p0, "FLAG_PART_FINALREST | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, "0 | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Prints the contents of an XSB file in human-readable form."

    .line 4
    .line 5
    const-string v2, "An XSB file contains schema meta information needed to "

    .line 6
    .line 7
    const-string v3, "perform tasks such as binding and validation."

    .line 8
    .line 9
    const-string v4, "Usage: dumpxsb myfile.xsb"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "    myfile.xsb - Path to an XSB file."

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static propertyflagsString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FLAG_PROP_ISATTR | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "FLAG_PROP_JAVASINGLETON | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "FLAG_PROP_JAVAOPTIONAL | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    const-string p0, "FLAG_PROP_JAVAARRAY | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "0 | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static qnameSetString(Lorg/apache/xmlbeans/QNameSet;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/QNameSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "(null)"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static simpleVarietyString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown simple variety ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LIST"

    return-object p0

    :cond_1
    const-string p0, "UNION"

    return-object p0

    :cond_2
    const-string p0, "ATOMIC"

    return-object p0
.end method

.method public static typeflagsString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FLAG_SIMPLE_TYPE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "FLAG_DOCUMENT_TYPE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_2

    const-string v1, "FLAG_ATTRIBUTE_TYPE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    const-string v1, "FLAG_ORDERED | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const-string v1, "FLAG_BOUNDED | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    const-string v1, "FLAG_FINITE | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const-string v1, "FLAG_NUMERIC | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const-string v1, "FLAG_STRINGENUM | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_8

    const-string v1, "FLAG_UNION_OF_LISTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_9

    const-string v1, "FLAG_HAS_PATTERN | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_a

    const-string v1, "FLAG_TOTAL_ORDER | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_b

    const-string v1, "FLAG_COMPILED | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "FLAG_BLOCK_EXT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_d

    const-string v1, "FLAG_BLOCK_REST | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_e

    const-string v1, "FLAG_FINAL_EXT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f

    const-string v1, "FLAG_FINAL_REST | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_10

    const-string v1, "FLAG_FINAL_UNION | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_11

    const-string v1, "FLAG_FINAL_LIST | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    const/high16 v1, 0x40000

    and-int/2addr p0, v1

    if-eqz p0, :cond_12

    const-string p0, "FLAG_ABSTRACT | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "0 | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static wcprocessString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown process type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SKIP"

    return-object p0

    :cond_1
    const-string p0, "LAX"

    return-object p0

    :cond_2
    const-string p0, "STRICT"

    return-object p0

    :cond_3
    const-string p0, "NOT_WILDCARD"

    return-object p0
.end method


# virtual methods
.method public SOAPArrayTypeString(Lorg/apache/xmlbeans/soap/SOAPArrayType;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->getQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;->soap11DimensionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public atLeast(III)Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_majorver:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_minorver:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_releaseno:I

    if-lt p1, p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public atMost(III)Z
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_majorver:I

    const/4 v1, 0x0

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_minorver:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_releaseno:I

    if-gt p1, p3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public derivationTypeString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown derivation code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "DT_EXTENSION"

    return-object p1

    :cond_1
    const-string p1, "DT_RESTRICTION"

    return-object p1

    :cond_2
    const-string p1, "DT_NOT_DERIVED"

    return-object p1
.end method

.method public dumpAll()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpHeader()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAttributeGroupData()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpModelGroupData()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpPointerData()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAttributeData(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpParticleData(Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpTypeFileData()V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readEnd()V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpIndexData()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpAnnotation()V
    .locals 8

    const/4 v0, 0x2

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return-void

    :cond_1
    const-string v3, "Annotation"

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const-string v3, "):"

    if-lez v1, :cond_4

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Attributes ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    const/16 v5, 0x18

    invoke-virtual {p0, v0, v5, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v5

    const-string v6, ", Value: "

    const-string v7, "Name: "

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ", ValueURI: "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Documentation elements ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v1

    if-lez v1, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Appinfo elements ("

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    :goto_5
    if-ge v2, v1, :cond_7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    goto :goto_6

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, "<empty>"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpAnnotations()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Top-level annotations ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    :cond_1
    return-void
.end method

.method public dumpAttributeData(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Use: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->attruseCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Default: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Default value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readXmlValueObject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Fixed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WsdlArrayType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->SOAPArrayTypeString(Lorg/apache/xmlbeans/soap/SOAPArrayType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Filename: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dumpAttributeGroupData()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Target namespace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Chameleon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Form default: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Redefine: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Attribute Group Xml: "

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpXml()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Filename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public dumpClassnameIndex(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpHeader()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Magic cookie: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->hex32String(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const v1, -0x25854542

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const-string v0, "Wrong magic cookie."

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_majorver:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_minorver:I

    const/16 v0, 0x12

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    iput v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_releaseno:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Major version: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_majorver:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Minor version: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_minorver:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Release number: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_releaseno:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_majorver:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_minorver:I

    const/16 v1, 0x18

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Filetype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->filetypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;

    invoke-direct {v1, p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;-><init>(Lorg/apache/xmlbeans/impl/tool/XsbDumper;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_stringPool:Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;->readFrom(Ljava/io/DataInputStream;)V

    return v0

    :cond_3
    :goto_1
    const-string v0, "Incompatible version."

    goto/16 :goto_0
.end method

.method public dumpIndexData()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuffer;

    .line 6
    .line 7
    const-string v2, "Handle pool ("

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v2, "):"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, " ("

    .line 43
    .line 44
    invoke-static {v3, v5}, Lorg/apache/ftpserver/main/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->filetypeString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    .line 54
    .line 55
    const-string v4, ")"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    .line 71
    .line 72
    .line 73
    const-string v0, "Global elements"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "Global attributes"

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "Model groups"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "Attribute groups"

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "Identity constraints"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "Global types"

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "Document types"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v0, "Attribute types"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "All types by classname"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpClassnameIndex(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v0, "Defined namespaces"

    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpStringArray(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const/16 v0, 0xf

    .line 124
    .line 125
    const/4 v2, 0x2

    .line 126
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    .line 132
    const-string v0, "Redefined global types"

    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "Redfined model groups"

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "Redfined attribute groups"

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpQNameMap(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    const/16 v0, 0x13

    .line 148
    .line 149
    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    .line 155
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotations()V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readEnd()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public dumpModelGroupData()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Target namespace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Chameleon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Element form default: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Attribute form default: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Redefine: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_2
    const-string v1, "Model Group Xml: "

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpXml()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    const/16 v1, 0x15

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Filename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public dumpParticleArray(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpParticleData(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpParticleData(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->particleTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->particleflagsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MinOccurs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->bigIntegerString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MaxOccurs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->bigIntegerString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Transition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameSetString(Lorg/apache/xmlbeans/QNameSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p1, "Unrecognized schema particle type"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Wildcard set: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameSetString(Lorg/apache/xmlbeans/QNameSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Wildcard process: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->wcprocessString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Default: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/16 v0, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "Default value: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readXmlValueObject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v3, "WsdlArrayType: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->SOAPArrayTypeString(Lorg/apache/xmlbeans/soap/SOAPArrayType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    if-eqz p1, :cond_5

    const/16 v0, 0x11

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Substitution group ref: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Substitution group members ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    :cond_5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "Identity constraints ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    :goto_2
    if-ge v2, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Filename: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string p1, "Particle children"

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpParticleArray(Ljava/lang/String;)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpPointerData()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type system: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public dumpPropertyData()V
    .locals 5

    const-string v0, "Property"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Flags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->propertyflagsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Container type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Min occurances: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->bigIntegerString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Max occurances: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->bigIntegerString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Nillable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->alwaysString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Default: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->alwaysString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Fixed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->alwaysString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Default text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Java prop name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Java type code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->jtcString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Type for java signature: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atMost(III)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Java setter delimiter: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameSetString(Lorg/apache/xmlbeans/QNameSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Default value: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readXmlValueObject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Accepted substitutions ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :goto_0
    if-ge v3, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "  Accepted name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpQNameMap(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readHandle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpStringArray(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpTypeArray(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "):"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    return-void
.end method

.method public dumpTypeFileData()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameString(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Outer type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Depth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Base type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Derivation type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->derivationTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAnnotation()V

    const-string v0, "Container field:"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Reftype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->containerfieldTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const-string v4, "Index: "

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Handle: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readHandle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Java class name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Java impl class name: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const-string v0, "Anonymous types"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpTypeArray(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "Anonymous union member ordinal: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Flags: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->typeflagsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    and-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v6, "):"

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Complex variety: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->complexVarietyString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const/16 v8, 0x17

    invoke-virtual {p0, v2, v8, v5}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->atLeast(III)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Content based on type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Attribute model ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_5

    invoke-virtual {p0, v5}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpAttributeData(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Wildcard set: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQNameSet()Lorg/apache/xmlbeans/QNameSet;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->qnameSetString(Lorg/apache/xmlbeans/QNameSet;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Wildcard process: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v9

    invoke-static {v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->wcprocessString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Attribute properties ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpPropertyData()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    if-eq v7, v1, :cond_7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    :cond_7
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "IsAll: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    const-string v8, "Content model"

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpParticleArray(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Element properties ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_8

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpPropertyData()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    if-ne v7, v2, :cond_15

    :cond_b
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Simple type variety: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->simpleVarietyString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Facets ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_d

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->facetCodeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Value: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readXmlValueObject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Fixed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Whitespace rule: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->whitespaceCodeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Patterns ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_e

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_e
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Enumeration values ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_f

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readXmlValueObject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_f
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Base enum type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "String enum entries ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->indent()V

    :goto_c
    if-ge v5, v0, :cond_10

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "\" -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->outdent()V

    :cond_11
    if-eq v4, v3, :cond_14

    if-eq v4, v2, :cond_13

    if-eq v4, v1, :cond_12

    const-string v0, "Unknown simple type variety"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "List item type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    goto :goto_e

    :cond_13
    const-string v0, "Union members"

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->dumpTypeArray(Ljava/lang/String;)V

    goto :goto_e

    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Primitive type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Decimal size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_15
    :goto_e
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Filename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public dumpXml()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->prettyOptions:Lorg/apache/xmlbeans/XmlOptions;

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlTokenSource;->xmlText(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "!!!!!! BAD XML !!!!!"

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->emit(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public emit(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->flush()V

    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->flush()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->flush()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public facetCodeString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown facet code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "FACET_FRACTION_DIGITS"

    return-object p1

    :pswitch_1
    const-string p1, "FACET_TOTAL_DIGITS"

    return-object p1

    :pswitch_2
    const-string p1, "FACET_MAX_EXCLUSIVE"

    return-object p1

    :pswitch_3
    const-string p1, "FACET_MAX_INCLUSIVE"

    return-object p1

    :pswitch_4
    const-string p1, "FACET_MIN_INCLUSIVE"

    return-object p1

    :pswitch_5
    const-string p1, "FACET_MIN_EXCLUSIVE"

    return-object p1

    :pswitch_6
    const-string p1, "FACET_MAX_LENGTH"

    return-object p1

    :pswitch_7
    const-string p1, "FACET_MIN_LENGTH"

    return-object p1

    :pswitch_8
    const-string p1, "FACET_LENGTH"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public indent()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "  "

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public outdent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, LA/g;->e(Ljava/lang/String;II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_indent:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    aget-byte v1, v0, v2

    if-nez v1, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    :cond_1
    array-length v1, v0

    if-ne v1, v3, :cond_2

    aget-byte v1, v0, v2

    if-ne v1, v3, :cond_2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v0

    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method public readByteArray()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/Exception;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readEnd()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_stringPool:Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;

    return-void
.end method

.method public readHandle()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readInt()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public readQName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public readQNameSet()Lorg/apache/xmlbeans/QNameSet;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    invoke-static {v1, v3, v2, v4}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v3, v1, v4, v2}, Lorg/apache/xmlbeans/QNameSet;->forSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lorg/apache/xmlbeans/QNameSet;

    move-result-object v0

    return-object v0
.end method

.method public readSOAPArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lorg/apache/xmlbeans/soap/SOAPArrayType;

    invoke-direct {v2, v0, v1}, Lorg/apache/xmlbeans/soap/SOAPArrayType;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/String;)V

    return-object v2
.end method

.method public readShort()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_input:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->_stringPool:Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/tool/XsbDumper$StringPool;->stringForCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readHandle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readXmlValueObject()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readShort()I

    move-result v1

    if-eqz v1, :cond_2

    packed-switch v1, :pswitch_data_0

    sget-boolean v2, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->$assertionsDisabled:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readQName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->pretty(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/impl/util/HexBin;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-le v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XsbDumper;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "nil"

    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public whitespaceCodeString(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown whitespace code ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "WS_COLLAPSE"

    return-object p1

    :cond_1
    const-string p1, "WS_REPLACE"

    return-object p1

    :cond_2
    const-string p1, "WS_PRESERVE"

    return-object p1

    :cond_3
    const-string p1, "WS_UNSPECIFIED"

    return-object p1
.end method
