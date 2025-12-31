.class public Lorg/apache/xmlbeans/impl/tool/XMLBeanXSTCHarness;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/tool/XSTCTester$Harness;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTestCase(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getTestCase()Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v7}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v7, v4}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v6

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getResourceFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getResourceFile()Ljava/io/File;

    move-result-object v7

    new-instance v8, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v8}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/xmlbeans/XmlObject$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v7, v5

    :goto_0
    if-nez v7, :cond_2

    new-array v7, v1, [Lorg/apache/xmlbeans/XmlObject;

    aput-object v6, v7, v2

    goto :goto_1

    :cond_2
    new-array v8, v0, [Lorg/apache/xmlbeans/XmlObject;

    aput-object v6, v8, v2

    aput-object v7, v8, v1

    move-object v7, v8

    :goto_1
    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v6

    new-instance v8, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v8}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v8, v4}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lorg/apache/xmlbeans/XmlBeans;->compileXsd([Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v6

    invoke-static {}, Lorg/apache/xmlbeans/XmlBeans;->getBuiltinTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v7

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaTypeLoader;

    aput-object v6, v0, v2

    aput-object v7, v0, v1

    invoke-static {v0}, Lorg/apache/xmlbeans/XmlBeans;->typeLoaderUnion([Lorg/apache/xmlbeans/SchemaTypeLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    goto :goto_3

    :goto_2
    instance-of v6, v0, Lorg/apache/xmlbeans/XmlException;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->setCrash(Z)V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->addSvMessages(Ljava/util/Collection;)V

    :cond_4
    move-object v0, v5

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->addSvMessages(Ljava/util/Collection;)V

    invoke-virtual {p1, v6}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->setSvActual(Z)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    :cond_6
    :try_start_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    move-result-object v3

    new-instance v6, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v6}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v6, v4}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v6

    invoke-interface {v0, v3, v5, v6}, Lorg/apache/xmlbeans/SchemaTypeLoader;->parse(Ljava/io/File;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    new-instance v3, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v3}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    instance-of v3, v0, Lorg/apache/xmlbeans/XmlException;

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->setCrash(Z)V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->addIvMessages(Ljava/util/Collection;)V

    :cond_8
    :goto_6
    invoke-virtual {p1, v4}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->addIvMessages(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->setIvActual(Z)V

    return-void
.end method
