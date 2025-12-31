.class public Lorg/apache/xmlbeans/impl/tool/XSTCTester;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/tool/XSTCTester$Harness;,
        Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;,
        Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;
    }
.end annotation


# static fields
.field private static final leadingSpace:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^\\s+"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->leadingSpace:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static errorReported(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/XmlError;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "help"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "usage"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v4, "version"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v5, "showpass"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, "errcode"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v9, Lorg/apache/xmlbeans/impl/tool/CommandLine;

    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    move-object/from16 v11, p0

    invoke-direct {v9, v11, v0, v10}, Lorg/apache/xmlbeans/impl/tool/CommandLine;-><init>([Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v9, v1}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {v9, v2}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {v9, v3}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v9, v4}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->printVersion()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_1
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getBadOpts()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Unrecognized option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->printUsage()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_3
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->args()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4

    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->printUsage()V

    return-void

    :cond_4
    invoke-virtual {v9, v5}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9, v6}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getOpt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/apache/xmlbeans/impl/tool/CommandLine;->getFiles()[Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lorg/apache/xmlbeans/impl/tool/XMLBeanXSTCHarness;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/tool/XMLBeanXSTCHarness;-><init>()V

    const/4 v6, 0x0

    :goto_3
    array-length v9, v3

    if-ge v6, v9, :cond_8

    aget-object v9, v3, v6

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LTG"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_7

    aget-object v9, v3, v6

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    new-instance v3, Ljava/io/File;

    const-string v6, "out.html"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/PrintWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v9, "<html>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<style>td {border-bottom: 1px solid black} xmp {white-space: normal; word-wrap: break-word; word-break: break-all} </style>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<body>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<script language=\'JavaScript\' type=\'text/javascript\'>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "var w;"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "function openWindow(schema, instance) {"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  if (w == null) {"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "    w = window.open(\'about:blank\', \'xstc\');"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "  }"

    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v11, "  if (w.closed) {"

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  w.document.open();"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  w.document.write(\"<frameset rows=*,*><frame src=\'\" + schema + \"\'><frame src=\'\" + instance + \"\'></frameset>\");"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  w.document.close();"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  w.focus();"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "}"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "</script>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<h1>XML Schema Test Collection Results</h1>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "<p>Run on "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v10, Lorg/apache/xmlbeans/XmlCalendar;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-direct {v10, v11}, Lorg/apache/xmlbeans/XmlCalendar;-><init>(Ljava/util/Date;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v10, "</p>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<p>Values in schema or instance valid columns are results from compiling or validating respectively."

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "Red or orange background mean the test failed.</p>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<table style=\'border: 1px solid black\' cellpadding=0 cellspacing=0>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "<tr><td witdh=10%>id</td><td width=70%>Description</td><td width=10%>sch v</td><td width=10%>ins v</td></tr>"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuffer;

    const-string v14, "Processing test cases in "

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v12}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->parseLTGFile(Ljava/io/File;Ljava/util/Collection;)[Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_b

    const/4 v15, 0x0

    :goto_5
    array-length v1, v13

    if-ge v15, v1, :cond_b

    new-instance v1, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;-><init>()V

    move-object/from16 v16, v4

    aget-object v4, v13, v15

    invoke-static {v1, v4}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->access$002(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    invoke-interface {v5, v1}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$Harness;->runTestCase(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;)V

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->succeeded(Z)Z

    move-result v4

    if-nez v4, :cond_9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    goto :goto_5

    :cond_b
    move-object/from16 v16, v4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "<tr><td colspan=4 bgcolor=skyblue>"

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, "</td></tr>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "<tr><td>Errors within the LTG file:"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "<xmp>"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    const-string v1, "</xmp>"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "<tr><td colspan=4 bgcolor=green>Nothing to report</td></tr>"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    :goto_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;

    invoke-static {v4, v6, v2}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->summarizeResultAsHTMLTableRows(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;Ljava/io/PrintWriter;Z)V

    goto :goto_a

    :cond_f
    move-object/from16 v4, v16

    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_10
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<tr><td colspan=4>Summary: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " failures out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " cases run.</td></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "</table>"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Time run tests: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v7

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v0, " seconds"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Results output to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "cmd /c start iexplore \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_c

    :cond_11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "mozilla file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :goto_c
    return-void

    :cond_12
    :goto_d
    invoke-static {}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->printUsage()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static makeHTMLDescription(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<a class=noline href=\'javascript:openWindow(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "\\\\\\\\"

    const-string v3, "\\\\"

    if-nez v1, :cond_0

    const-string v1, "about:No schema"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "about:No instance"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    const-string v1, "\")\'><xmp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->leadingSpace:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "</xmp></a>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeHTMLLink(Ljava/io/File;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "&nbsp;"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<a href=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "\" target=_blank>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "</a>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseLTGFile(Ljava/io/File;Ljava/util/Collection;)[Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;
    .locals 13

    const-string v0, "Document "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v2}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v3, ""

    const-string v4, "http://www.bea.com/2003/05/xmlbean/ltgfmt"

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlbeans/XmlOptions;->setLoadSubstituteNamespaces(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v2, v1}, Lorg/apache/xmlbeans/XmlOptions;->setErrorListener(Ljava/util/Collection;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/XmlOptions;->setLoadLineNumbers()Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p0, v2}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Factory;->parse(Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/xmlbeans/XmlObject;->validate(Lorg/apache/xmlbeans/XmlOptions;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument;->getTests()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestsDocument$Tests;->getTestArray()[Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_a

    new-instance v5, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    invoke-direct {v5}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;-><init>()V

    invoke-static {v5, p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$302(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/io/File;)Ljava/io/File;

    aget-object v6, v0, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$402(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/lang/String;)Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->getOrigin()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$502(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/lang/String;)Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$602(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/lang/String;)Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->getFiles()Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase$Files;->getFileArray()[Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-interface {v7}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/TestCase;->getOrigin()Ljava/lang/String;

    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_9

    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getFolder()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-interface {v9}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getFileName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "/"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getRole()Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc$Role$Enum;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$1100(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "More than one resource file speicifed - ignoring all but last"

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_2
    invoke-static {v5, v10}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$1102(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/io/File;)Ljava/io/File;

    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getValidity()Z

    move-result v8

    invoke-static {v5, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$1202(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Z)Z

    goto :goto_3

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/XmlException;

    const-string v0, "Unexpected file role"

    aget-object v2, v6, v7

    invoke-static {v0, v2}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/XmlException;-><init>(Lorg/apache/xmlbeans/XmlError;)V

    throw p0

    :cond_3
    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$700(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "More than one instance file speicifed - ignoring all but last"

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v5, v10}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$702(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/io/File;)Ljava/io/File;

    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getValidity()Z

    move-result v8

    invoke-static {v5, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$802(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Z)Z

    goto :goto_3

    :cond_5
    invoke-static {v5}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$900(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v8, "More than one schema file speicifed - ignoring all but last"

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {v5, v10}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$902(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/io/File;)Ljava/io/File;

    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getValidity()Z

    move-result v8

    invoke-static {v5, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$1002(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Z)Z

    :goto_3
    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;

    move-result-object v8

    if-eqz v8, :cond_8

    aget-object v8, v6, v7

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/FileDesc;->getCode()Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/xmlbeans/impl/xb/ltgfmt/Code;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->access$1302(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Can\'t read file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xmlbeans/XmlError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    return-object p0

    :cond_b
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, " not valid."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    :goto_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static printUsage()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: xstc [-showpass] [-errcode] foo_LTGfmt.xml ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static summarizeResultAsHTMLTableRows(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;Ljava/io/PrintWriter;Z)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getTestCase()Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getErrorCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getIvMessages()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getSvMessages()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 42
    :goto_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_4

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->isSvExpected()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isSvActual()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ne v5, v6, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v5, 0x0

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    :goto_3
    const/4 v5, 0x1

    .line 62
    :goto_4
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->isIvExpected()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isIvActual()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-ne v6, v7, :cond_5

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_5
    const/4 v6, 0x0

    .line 80
    goto :goto_6

    .line 81
    :cond_6
    :goto_5
    const/4 v6, 0x1

    .line 82
    :goto_6
    if-eqz v3, :cond_9

    .line 83
    .line 84
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getErrorCode()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->access$100(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;)Ljava/util/Collection;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-static {v7, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->errorReported(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getErrorCode()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->access$200(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;)Ljava/util/Collection;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {v7, v8}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->errorReported(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_8

    .line 111
    .line 112
    :cond_7
    const/4 v1, 0x1

    .line 113
    :cond_8
    move v2, v1

    .line 114
    :cond_9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isCrash()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v7, "<tr>"

    .line 119
    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    const-string v1, "<tr bgcolor=black color=white>"

    .line 123
    .line 124
    goto :goto_7

    .line 125
    :cond_a
    move-object v1, v7

    .line 126
    :goto_7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v1, v3, 0x1

    .line 130
    .line 131
    add-int/2addr v1, v4

    .line 132
    const-string v8, "<td rowspan="

    .line 133
    .line 134
    const-string v9, " valign=top>"

    .line 135
    .line 136
    invoke-static {v1, v8, v9}, Lorg/apache/ftpserver/main/a;->k(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    const-string v8, "</td>"

    .line 148
    .line 149
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuffer;

    .line 160
    .line 161
    const-string v9, "<td valign=top>"

    .line 162
    .line 163
    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->makeHTMLDescription(Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getResourceFile()Ljava/io/File;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_b

    .line 188
    .line 189
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isSvActual()Z

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    invoke-static {v1, v10}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->makeHTMLLink(Ljava/io/File;Z)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    goto :goto_8

    .line 202
    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getSchemaFile()Ljava/io/File;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isSvActual()Z

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    invoke-static {v10, v11}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->makeHTMLLink(Ljava/io/File;Z)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    .line 221
    .line 222
    const-string v10, "<br>"

    .line 223
    .line 224
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getResourceFile()Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isSvActual()Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    invoke-static {v10, v11}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->makeHTMLLink(Ljava/io/File;Z)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    :goto_8
    new-instance v10, Ljava/lang/StringBuffer;

    .line 247
    .line 248
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v11, "<td bgcolor=red valign=top>"

    .line 252
    .line 253
    const-string v12, "<td bgcolor=orange valign=top>"

    .line 254
    .line 255
    if-eqz v5, :cond_c

    .line 256
    .line 257
    move-object v5, v9

    .line 258
    goto :goto_9

    .line 259
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isSvActual()Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_d

    .line 264
    .line 265
    move-object v5, v12

    .line 266
    goto :goto_9

    .line 267
    :cond_d
    move-object v5, v11

    .line 268
    :goto_9
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    new-instance v1, Ljava/lang/StringBuffer;

    .line 285
    .line 286
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .line 288
    .line 289
    if-eqz v6, :cond_e

    .line 290
    .line 291
    goto :goto_a

    .line 292
    :cond_e
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isIvActual()Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eqz v5, :cond_f

    .line 297
    .line 298
    move-object v9, v12

    .line 299
    goto :goto_a

    .line 300
    :cond_f
    move-object v9, v11

    .line 301
    :goto_a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getInstanceFile()Ljava/io/File;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->isIvActual()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    invoke-static {v5, v6}, Lorg/apache/xmlbeans/impl/tool/XSTCTester;->makeHTMLLink(Ljava/io/File;Z)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v1, "</tr>"

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    if-eqz v3, :cond_11

    .line 335
    .line 336
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Ljava/lang/StringBuffer;

    .line 340
    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .line 343
    .line 344
    if-eqz v2, :cond_10

    .line 345
    .line 346
    const-string v2, "<td colspan=4 valid=top>"

    .line 347
    .line 348
    goto :goto_b

    .line 349
    :cond_10
    const-string v2, "<td colspan=4 bgcolor=orange valign=top>"

    .line 350
    .line 351
    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    .line 353
    .line 354
    const-string v2, "expected error: "

    .line 355
    .line 356
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCase;->getErrorCode()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_11
    if-eqz v4, :cond_15

    .line 380
    .line 381
    invoke-virtual {p0, p2}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->succeeded(Z)Z

    .line 382
    .line 383
    .line 384
    move-result p2

    .line 385
    if-nez p2, :cond_12

    .line 386
    .line 387
    const-string p2, "<tr><td colspan=4 bgcolor=yellow><xmp>"

    .line 388
    .line 389
    :goto_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_d

    .line 393
    :cond_12
    const-string p2, "<tr><td colspan=4><xmp>"

    .line 394
    .line 395
    goto :goto_c

    .line 396
    :goto_d
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getSvMessages()Ljava/util/Collection;

    .line 397
    .line 398
    .line 399
    move-result-object p2

    .line 400
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_13

    .line 409
    .line 410
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_13
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/tool/XSTCTester$TestCaseResult;->getIvMessages()Ljava/util/Collection;

    .line 419
    .line 420
    .line 421
    move-result-object p0

    .line 422
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result p2

    .line 430
    if-eqz p2, :cond_14

    .line 431
    .line 432
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_14
    const-string p0, "</xmp></tr></td>"

    .line 441
    .line 442
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_15
    return-void
.end method
