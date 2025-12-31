.class public Lorg/apache/poi/poifs/macros/VBAMacroExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 6
    .line 7
    const-string v2, "Use:"

    .line 8
    .line 9
    const-string v3, "   VBAMacroExtractor <office.doc> [output]"

    .line 10
    .line 11
    const-string v4, ""

    .line 12
    .line 13
    const-string v5, "If an output directory is given, macros are written there"

    .line 14
    .line 15
    invoke-static {v0, v2, v3, v4, v5}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "Otherwise they are output to the screen"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    aget-object v2, p0, v2

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    array-length v2, p0

    .line 35
    if-le v2, v1, :cond_1

    .line 36
    .line 37
    new-instance v2, Ljava/io/File;

    .line 38
    .line 39
    aget-object p0, p0, v1

    .line 40
    .line 41
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    new-instance p0, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;

    .line 47
    .line 48
    invoke-direct {p0}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v2}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;->extract(Ljava/io/File;Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public extract(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, ".vba"

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/poifs/macros/VBAMacroExtractor;->extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public extract(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extracting VBA Macros from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p3, "Output directory "

    const-string v0, " could not be created"

    .line 2
    invoke-static {p2, p3, v0}, Lch/qos/logback/core/joran/util/a;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v1, "STDOUT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacros()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->close()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "---------------------------------------"

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, ""

    .line 4
    invoke-static {v3, v1, v2, v4, v0}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 6
    invoke-static {v2, p3}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lorg/apache/poi/util/StringUtil;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Extracted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
