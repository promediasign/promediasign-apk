.class public Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static inst2xsd([Ljava/io/Reader;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
    .locals 3

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lorg/apache/xmlbeans/XmlObject;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/Reader;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->inst2xsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object p0

    return-object p0
.end method

.method public static inst2xsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;
    .locals 3

    .line 2
    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;-><init>()V

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->getDesign()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/apache/xmlbeans/impl/inst2xsd/VenetianBlindStrategy;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/VenetianBlindStrategy;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown design."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lorg/apache/xmlbeans/impl/inst2xsd/SalamiSliceStrategy;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/SalamiSliceStrategy;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/inst2xsd/RussianDollStrategy;-><init>()V

    :goto_0
    invoke-interface {v1, p0, p1, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/XsdGenStrategy;->processDoc([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;)V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->isVerbose()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v1, "typeSystemHolder.toString(): "

    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/util/TypeSystemHolder;->getSchemaDocuments()[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "\'. "

    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "h"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "help"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "usage"

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "license"

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "version"

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v9, "verbose"

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v10, "validate"

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "design"

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v13, "simple-content-types"

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v14, "enumerations"

    invoke-virtual {v11, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v15, "outDir"

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "outPrefix"

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    new-instance v1, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    invoke-direct {v1, v0, v3, v11}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;-><init>()V

    invoke-virtual {v1, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_5
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_7

    const/4 v0, 0x0

    :goto_0
    array-length v1, v3

    if-ge v0, v1, :cond_6

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized option: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_7
    invoke-virtual {v1, v12}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const-string v6, "vb"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setDesign(I)V

    goto :goto_1

    :cond_9
    const-string v6, "rd"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setDesign(I)V

    goto :goto_1

    :cond_a
    const-string v6, "ss"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setDesign(I)V

    :goto_1
    invoke-virtual {v1, v13}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    const-string v6, "smart"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setSimpleContentTypes(I)V

    goto :goto_2

    :cond_c
    const-string v6, "string"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setSimpleContentTypes(I)V

    :goto_2
    invoke-virtual {v1, v14}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    const-string v4, "never"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0, v5}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setUseEnumerations(I)V

    goto :goto_3

    :cond_e
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setUseEnumerations(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1, v15}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    const-string v4, "."

    goto :goto_4

    :cond_f
    invoke-virtual {v1, v15}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, "schema"

    :cond_10
    invoke-virtual {v1, v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v0, v4}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->setVerbose(Z)V

    invoke-virtual {v1, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    goto :goto_6

    :cond_12
    const/4 v5, 0x0

    :goto_6
    const-string v4, ".xml"

    invoke-virtual {v1, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    new-array v6, v4, [Lorg/apache/xmlbeans/XmlObject;

    if-nez v4, :cond_13

    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_13
    const/4 v4, 0x0

    :goto_7
    :try_start_1
    array-length v7, v1

    if-ge v4, v7, :cond_14

    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v5, v16

    goto/16 :goto_c

    :cond_14
    invoke-static {v6, v0}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->inst2xsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;)[Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v1

    const/4 v4, 0x0

    :goto_8
    :try_start_2
    array-length v7, v1

    if-ge v4, v7, :cond_16

    aget-object v7, v1, v4

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->isVerbose()Z

    move-result v8

    if-eqz v8, :cond_15

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "----------------------\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_15
    :goto_9
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v10, ".xsd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v9}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v9}, Lorg/apache/xmlbeans/XmlOptions;->setSavePrettyPrint()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_16
    if-eqz v5, :cond_17

    invoke-static {v1, v6}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->validateInstances([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;[Lorg/apache/xmlbeans/XmlObject;)Z

    :cond_17
    return-void

    :goto_a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Could not write file: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ".xsd\'. "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :goto_b
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "Could not read file: \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v16

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :goto_c
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "Invalid xml file: \'"

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catch_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_18
    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_19
    const/4 v0, 0x0

    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_d
    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :goto_e
    invoke-static {}, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2Xsd;->printHelp()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static printHelp()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Generates XMLSchema from instance xml documents."

    .line 4
    .line 5
    const-string v2, "Usage: inst2xsd [opts] [instance.xml]*"

    .line 6
    .line 7
    const-string v3, "Options include:"

    .line 8
    .line 9
    const-string v4, "    -design [rd|ss|vb] - XMLSchema design type"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "             rd  - Russian Doll Design - local elements and local types"

    .line 15
    .line 16
    const-string v2, "             ss  - Salami Slice Design - global elements and local types"

    .line 17
    .line 18
    const-string v3, "             vb  - Venetian Blind Design (default) - local elements and global complex types"

    .line 19
    .line 20
    const-string v4, "    -simple-content-types [smart|string] - Simple content types detection (leaf text). Smart is the default"

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "    -enumerations [never|NUMBER] - Use enumerations. Default value is 10."

    .line 26
    .line 27
    const-string v2, "    -outDir [dir] - Directory for output files. Default is \'.\'"

    .line 28
    .line 29
    const-string v3, "    -outPrefix [file_name_prefix] - Prefix for output file names. Default is \'schema\'"

    .line 30
    .line 31
    const-string v4, "    -validate - Validates input instances agaist generated schemas."

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "    -verbose - print more informational messages"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "    -license - print license information"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "    -help - help imformation"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static validateInstances([Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;[Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 9

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const-string v1, ":"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    .line 11
    .line 12
    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :try_start_0
    invoke-static {p0, v3}, Lorg/apache/xmlbeans/XmlBeans;->loadXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 24
    .line 25
    const-string v3, "\n-------------------"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    :goto_0
    array-length v5, p1

    .line 33
    if-ge v3, v5, :cond_3

    .line 34
    .line 35
    :try_start_1
    aget-object v5, p1, v3

    .line 36
    .line 37
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlTokenSource;->newXMLStreamReader()Lorg/apache/poi/javax/xml/stream/XMLStreamReader;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    new-instance v6, Lorg/apache/xmlbeans/XmlOptions;

    .line 42
    .line 43
    invoke-direct {v6}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-interface {p0, v5, v7, v6}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Lorg/apache/poi/javax/xml/stream/XMLStreamReader;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    .line 52
    .line 53
    .line 54
    move-result-object v5
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v5}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Lorg/apache/xmlbeans/SchemaType;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    sget-object v8, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 65
    .line 66
    if-ne v7, v8, :cond_1

    .line 67
    .line 68
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuffer;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .line 74
    .line 75
    aget-object v6, p1, v3

    .line 76
    .line 77
    invoke-interface {v6}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    const-string v6, " NOT valid.  "

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v5, "  Document type not found."

    .line 101
    .line 102
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_1
    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    .line 109
    .line 110
    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v6}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v5, v7}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    const-string v7, "Instance["

    .line 122
    .line 123
    if-eqz v5, :cond_2

    .line 124
    .line 125
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 126
    .line 127
    const-string v6, "] valid - "

    .line 128
    .line 129
    invoke-static {v3, v7, v6}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    aget-object v7, p1, v3

    .line 134
    .line 135
    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_3

    .line 154
    .line 155
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 156
    .line 157
    const-string v5, "] NOT valid - "

    .line 158
    .line 159
    invoke-static {v3, v7, v5}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    aget-object v7, p1, v3

    .line 164
    .line 165
    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_0

    .line 192
    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Lorg/apache/xmlbeans/XmlError;

    .line 198
    .line 199
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 200
    .line 201
    new-instance v7, Ljava/lang/StringBuffer;

    .line 202
    .line 203
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5}, Lorg/apache/xmlbeans/XmlError;->getLine()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v5}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catch_0
    move-exception v2

    .line 242
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 243
    .line 244
    new-instance v6, Ljava/lang/StringBuffer;

    .line 245
    .line 246
    const-string v7, "Error:\n"

    .line 247
    .line 248
    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    aget-object v7, p1, v3

    .line 252
    .line 253
    invoke-interface {v7}, Lorg/apache/xmlbeans/XmlTokenSource;->documentProperties()Lorg/apache/xmlbeans/XmlDocumentProperties;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getSourceName()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    .line 263
    .line 264
    const-string v7, " not loadable: "

    .line 265
    .line 266
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_3
    return v2

    .line 289
    :catch_1
    move-exception p0

    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_4

    .line 295
    .line 296
    instance-of p1, p0, Lorg/apache/xmlbeans/XmlException;

    .line 297
    .line 298
    if-nez p1, :cond_5

    .line 299
    .line 300
    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 301
    .line 302
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 303
    .line 304
    .line 305
    :cond_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 306
    .line 307
    const-string p1, "\n-------------------\n\nInvalid schemas."

    .line 308
    .line 309
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_6

    .line 321
    .line 322
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Lorg/apache/xmlbeans/XmlError;

    .line 327
    .line 328
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 329
    .line 330
    new-instance v3, Ljava/lang/StringBuffer;

    .line 331
    .line 332
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getLine()I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getColumn()I

    .line 346
    .line 347
    .line 348
    move-result v5

    .line 349
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    .line 354
    .line 355
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlError;->getMessage()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_6
    return v4
.end method
