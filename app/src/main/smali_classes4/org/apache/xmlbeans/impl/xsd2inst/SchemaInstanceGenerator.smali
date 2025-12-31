.class public Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "help"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "usage"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "license"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "version"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "dl"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "noupa"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "nopvr"

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "partial"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "name"

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    invoke-direct {v11, p0, v0, v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v11, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    invoke-virtual {v11, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    invoke-virtual {v11, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unrecognized option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;->printUsage()V

    return-void

    :cond_2
    invoke-virtual {v11, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v11, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    invoke-virtual {v11, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v11, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v11, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const-string v3, ".xsd"

    invoke-virtual {v11, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    invoke-virtual {v11, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Required option \"-name\" must be present"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    array-length v6, v3

    if-ge v1, v6, :cond_9

    :try_start_0
    aget-object v6, v3, v1

    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v6

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, "Can not load schema file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v9, v3, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    new-instance v3, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;-><init>()V

    invoke-virtual {v3, p0}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->setNetworkDownloads(Z)V

    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->setNopvr(Z)V

    invoke-virtual {v3, v0}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->setNoupa(Z)V

    invoke-static {v1, v4, v3}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;->xsd2inst([Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_6
    invoke-static {}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;->printUsage()V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Generates a document based on the given Schema file"

    .line 4
    .line 5
    const-string v2, "having the given element as root."

    .line 6
    .line 7
    const-string v3, "The tool makes reasonable attempts to create a valid document,"

    .line 8
    .line 9
    const-string v4, "but this is not always possible since, for example, "

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "there are schemas for which no valid instance document "

    .line 15
    .line 16
    const-string v2, "can be produced."

    .line 17
    .line 18
    const-string v3, "Usage: xsd2inst [flags] schema.xsd -name element_name"

    .line 19
    .line 20
    const-string v4, "Flags:"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    -name    the name of the root element"

    .line 26
    .line 27
    const-string v2, "    -dl      enable network downloads for imports and includes"

    .line 28
    .line 29
    const-string v3, "    -nopvr   disable particle valid (restriction) rule"

    .line 30
    .line 31
    const-string v4, "    -noupa   disable unique particle attribution rule"

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "    -license prints license information"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "    -version prints version information"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static xsd2inst([Ljava/io/Reader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    :try_start_0
    aget-object v2, p0, v1

    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/Reader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Can not load schema reader: "

    const-string v5, "  "

    .line 1
    invoke-static {v1, v4, v5}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 2
    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;->xsd2inst([Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xsd2inst([Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;
    .locals 4

    .line 7
    array-length v0, p0

    new-array v0, v0, [Ljava/io/Reader;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/StringReader;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;->xsd2inst([Ljava/io/Reader;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xsd2inst([Lorg/apache/xmlbeans/XmlObject;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;)Ljava/lang/String;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->isNetworkDownloads()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    :cond_0
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->isNopvr()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_1
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->isNoupa()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_2
    :try_start_0
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p2

    invoke-static {p0, p2, v2}, Lorg/apache/xmlbeans/XmlBeans;->compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    instance-of p2, p0, Lorg/apache/xmlbeans/XmlException;

    if-nez p2, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Schema compilation errors: "

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_9

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaTypeSystem;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object p0

    const/4 p2, 0x0

    :goto_2
    array-length v0, p0

    if-ge p2, v0, :cond_7

    aget-object v0, p0, p2

    invoke-interface {v0}, Lorg/apache/xmlbeans/SchemaType;->getDocumentElementName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v1, p0, p2

    goto :goto_3

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/xsd2inst/SampleXmlUtil;->createSampleForType(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Could not find a global element with name \""

    const-string v0, "\""

    .line 8
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No Schemas to process."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
