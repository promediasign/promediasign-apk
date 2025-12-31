.class public Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "usage"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "license"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "version"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "noanon"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "noupr"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v7, "noupa"

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v8, "partial"

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v9, p0, v0, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1d

    invoke-virtual {v9, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    invoke-virtual {v9, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto/16 :goto_11

    :cond_0
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Unrecognized option: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;->printUsage()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_2
    invoke-virtual {v9, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printLicense()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_4
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    if-nez p0, :cond_5

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;->printUsage()V

    return-void

    :cond_5
    invoke-virtual {v9, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    const-string v2, "nopvr"

    invoke-virtual {v9, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v9, v7}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v9, v8}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    const-string v5, ".xsd"

    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v9, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->filesEndingWith(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_5
    array-length v9, v5

    if-ge v8, v9, :cond_a

    :try_start_0
    aget-object v9, v5, v8

    new-instance v10, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v10}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v10}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xb/xsdschema/SchemaDocument;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v9

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v12, " not loadable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    new-array v5, v0, [Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/xmlbeans/XmlObject;

    check-cast v5, [Lorg/apache/xmlbeans/XmlObject;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v8}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v8, v7}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileDownloadUrls()Lorg/apache/xmlbeans/XmlOptions;

    if-eqz v2, :cond_b

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoPvrRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setCompileNoUpaRule()Lorg/apache/xmlbeans/XmlOptions;

    :cond_c
    if-eqz v4, :cond_d

    const-string v2, "COMPILE_PARTIAL_TYPESYSTEM"

    invoke-virtual {v8, v2}, Lorg/apache/xmlbeans/XmlOptions;->put(Ljava/lang/Object;)V

    :cond_d
    const/4 v2, 0x0

    if-eqz v6, :cond_e

    array-length v3, v6

    if-lez v3, :cond_e

    invoke-static {v6}, Lorg/apache/xmlbeans/XmlBeans;->resourceLoaderForPath([Ljava/io/File;)Lorg/apache/xmlbeans/ResourceLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderForResource(Lorg/apache/xmlbeans/ResourceLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v3

    goto :goto_7

    :cond_e
    move-object v3, v2

    :goto_7
    :try_start_1
    invoke-static {v5, v3, v8}, Lorg/apache/xmlbeans/XmlBeans;->compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v3
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_f

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Schema invalid: partial schema type system recovered"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "xml"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    const-string v7, "xs"

    .line 1
    invoke-static {v4, v5, v6, v7}, Lch/qos/logback/core/joran/util/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "xmlns:xs=\"http://www.w3.org/2001/XMLSchema\""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaTypeSystem;->documentTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaTypeSystem;->attributeTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Lorg/apache/xmlbeans/SchemaTypeSystem;->globalTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_14

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xmlbeans/SchemaType;

    if-nez p0, :cond_10

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getAnonymousTypes()[Lorg/apache/xmlbeans/SchemaType;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_10
    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->isDocumentType()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->isAttributeType()Z

    move-result v8

    if-nez v8, :cond_13

    sget-object v8, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    if-ne v7, v8, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {v4, v7}, Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;->noteNamespace(Ljava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    if-nez v8, :cond_12

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v7}, Lorg/apache/xmlbeans/SchemaType;->getBaseType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_14
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/apache/xmlbeans/XmlObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :cond_15
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xmlbeans/SchemaType;

    if-nez v6, :cond_16

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_b

    :cond_16
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v9, "+-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6, v4}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->readable(Lorg/apache/xmlbeans/SchemaType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;->notes(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_15

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    if-lez v7, :cond_15

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_17

    goto :goto_c

    :cond_17
    const-string v7, "| "

    goto :goto_d

    :cond_18
    :goto_c
    const-string v7, "  "

    :goto_d
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_19
    return-void

    :catch_1
    move-exception p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eqz v4, :cond_1a

    const-string v1, " couldn\'t recover from errors"

    goto :goto_e

    :cond_1a
    const-string v1, ""

    :goto_e
    const-string v2, "Schema invalid:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_1b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1c
    :goto_10
    return-void

    :cond_1d
    :goto_11
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/TypeHierarchyPrinter;->printUsage()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static noteNamespace(Ljava/util/Map;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->namespace(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/common/QNameHelper;->suggestPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move-object v2, v0

    .line 26
    :goto_0
    invoke-interface {p0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 54
    .line 55
    const-string v0, "xmlns:"

    .line 56
    .line 57
    const-string v1, "=\""

    .line 58
    .line 59
    const-string v3, "\""

    .line 60
    .line 61
    invoke-static {v0, v2, v1, p1, v3}, LA/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method private static notes(Lorg/apache/xmlbeans/SchemaType;)Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isBuiltinType()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, " (builtin)"

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->isSimpleType()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getSimpleVariety()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getEnumerationValues()[Lorg/apache/xmlbeans/XmlAnySimpleType;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, " (enumeration)"

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    const-string p0, " (list)"

    return-object p0

    :cond_3
    const-string p0, " (union)"

    return-object p0

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/SchemaType;->getContentType()I

    move-result p0

    if-eq p0, v2, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    return-object v1

    :cond_5
    const-string p0, " (mixed)"

    return-object p0

    :cond_6
    const-string p0, " (complex)"

    return-object p0
.end method

.method public static printUsage()V
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    const-string v1, "Prints the inheritance hierarchy of types defined in a schema.\n"

    .line 4
    .line 5
    const-string v2, "Usage: xsdtree [-noanon] [-nopvr] [-noupa] [-partial] [-license] schemafile.xsd*"

    .line 6
    .line 7
    const-string v3, "    -noanon - Don\'t include anonymous types in the tree."

    .line 8
    .line 9
    const-string v4, "    -noupa - do not enforce the unique particle attribution rule"

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->u(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "    -nopvr - do not enforce the particle valid (restriction) rule"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "    -partial - Print only part of the hierarchy."

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "    -license - prints license information"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "    schemafile.xsd - File containing the schema for which to print a tree."

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
