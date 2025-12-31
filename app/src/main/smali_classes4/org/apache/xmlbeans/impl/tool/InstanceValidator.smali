.class public Lorg/apache/xmlbeans/impl/tool/InstanceValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraMain([Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "h"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "help"

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "usage"

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "license"

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "version"

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "dl"

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "noupa"

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "nopvr"

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "strict"

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v11, "partial"

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v12, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v12, v0, v1, v13}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v12, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    invoke-virtual {v12, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-virtual {v12, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/InstanceValidator;->printUsage()V

    return v2

    :cond_2
    invoke-virtual {v12, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    return v2

    :cond_3
    invoke-virtual {v12, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    return v2

    :cond_4
    invoke-virtual {v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    invoke-virtual {v12, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v12, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v12, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v12, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v12, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    const-string v0, ".xsd"

    invoke-virtual {v12, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    const-string v0, ".xml"

    invoke-virtual {v12, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    const-string v0, ".jar"

    invoke-virtual {v12, v0}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_6
    array-length v0, v8

    const-string v13, " not loadable: "

    if-ge v12, v0, :cond_b

    :try_start_0
    aget-object v0, v8, v12

    new-instance v14, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v14}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v14}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/xmlbeans/XmlOptions;->setLoadMessageDigest()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v14

    invoke-static {v0, v14}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v1, v8, v12

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    new-array v0, v2, [Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/xmlbeans/XmlObject;

    check-cast v0, [Lorg/apache/xmlbeans/XmlObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v8}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v8, v1}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    if-eqz v3, :cond_c

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_e
    if-eqz v7, :cond_f

    const-string v3, "COMPILE_PARTIAL_TYPESYSTEM"

    invoke-virtual {v8, v3}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    :cond_f
    const/4 v3, 0x0

    if-eqz v10, :cond_10

    array-length v4, v10

    if-lez v4, :cond_10

    invoke-static {v10}, Lorg/apache/xmlbeans/XmlBeans;->resourceLoaderForPath([Ljava/io/File;)Lorg/apache/xmlbeans/ResourceLoader;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForResource(Lorg/apache/xmlbeans/ResourceLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v4

    goto :goto_8

    :cond_10
    move-object v4, v3

    :goto_8
    if-eqz v0, :cond_15

    :try_start_1
    array-length v5, v0

    if-lez v5, :cond_15

    invoke-static {v0, v4, v8}, Lorg/apache/xmlbeans/XmlBeans;->compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    instance-of v2, v0, Lorg/apache/xmlbeans/XmlException;

    if-nez v2, :cond_12

    :cond_11
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v7, :cond_13

    const-string v2, " couldn\'t recover from errors"

    goto :goto_9

    :cond_13
    const-string v2, ""

    :goto_9
    const-string v3, "Schema invalid:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    const/16 v0, 0xa

    return v0

    :cond_15
    :goto_b
    if-eqz v7, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Schema invalid: partial schema type system recovered"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_c

    :cond_16
    const/16 v0, 0xb

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_d
    if-nez v4, :cond_18

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getContextTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v4

    :cond_18
    move v1, v0

    :goto_e
    array-length v0, v9

    if-ge v2, v0, :cond_1d

    :try_start_2
    aget-object v0, v9, v2

    new-instance v5, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v5}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v7, "LOAD_LINE_NUMBERS_END_ELEMENT"

    invoke-virtual {v5, v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v5

    invoke-interface {v4, v0, v3, v5}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v7

    sget-object v8, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    if-ne v7, v8, :cond_19

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v7, v9, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, " NOT valid.  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v5, "  Document type not found."

    :goto_f
    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_19
    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    if-eqz v6, :cond_1a

    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setValidateStrict()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    goto :goto_10

    :cond_1a
    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7, v5}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    :goto_10
    invoke-interface {v0, v7}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v7, v9, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, " valid."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_1b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v7, v9, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v7, " NOT valid."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_11

    :cond_1c
    const/4 v1, 0x1

    goto :goto_12

    :catch_2
    move-exception v0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v8, v9, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_e

    :cond_1d
    return v1

    :cond_1e
    :goto_13
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/InstanceValidator;->printUsage()V

    return v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/tool/InstanceValidator;->extraMain([Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Validates the specified instance against the specified schema."

    .line 4
    .line 5
    const-string v2, "Contrast with the svalidate tool, which validates using a stream."

    .line 6
    .line 7
    const-string v3, "Usage: validate [-dl] [-nopvr] [-noupa] [-license] schema.xsd instance.xml"

    .line 8
    .line 9
    const-string v4, "Options:"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "    -dl - permit network downloads for imports and includes (default is off)"

    .line 15
    .line 16
    const-string v2, "    -noupa - do not enforce the unique particle attribution rule"

    .line 17
    .line 18
    const-string v3, "    -nopvr - do not enforce the particle valid (restriction) rule"

    .line 19
    .line 20
    const-string v4, "    -strict - performs strict(er) validation"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    -partial - allow partial schema type system"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "    -license - prints license information"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
