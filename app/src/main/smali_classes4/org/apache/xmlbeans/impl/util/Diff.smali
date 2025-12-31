.class public Lorg/apache/xmlbeans/impl/util/Diff;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readersAsText(Ljava/io/Reader;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    new-instance p0, Ljava/io/LineNumberReader;

    invoke-direct {p0, p2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":\n"

    const-string v3, "File \""

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" and file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\" differ at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\n========\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v4, "\" has extra lines at line "

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    .line 1
    invoke-static {v3, p3, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    .line 2
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    .line 3
    invoke-static {v3, p1, v4}, Lch/qos/logback/core/joran/util/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
