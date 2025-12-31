.class public Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;
.super Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;-><init>()V

    return-void
.end method

.method private isBlank(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isLegal(C)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->isBlank(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseAssignments(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "PARSING LINE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_8

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_8

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->isBlank(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_2
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->isLegal(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-direct {p0, v3}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->isBlank(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_3
    const/16 v2, 0x22

    if-ne v3, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    :cond_4
    :goto_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v2, v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v4

    const-string v5, "missing double quotes on line "

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v0, 0x1

    move v3, v2

    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->isLegal(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->getLogger()Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "SETTING KEY:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " VALUE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lorg/apache/xmlbeans/impl/jam/provider/JamLogger;->verbose(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private removeComments(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "//"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "\""

    .line 12
    .line 13
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, -0x1

    .line 18
    if-eq v4, v3, :cond_0

    .line 19
    .line 20
    if-ge v3, v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v3, ""

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v6, p1

    .line 27
    :cond_1
    :goto_0
    if-ge v5, v0, :cond_4

    .line 28
    .line 29
    if-eq v2, v4, :cond_4

    .line 30
    .line 31
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eq v4, v2, :cond_1

    .line 36
    .line 37
    if-lez v2, :cond_2

    .line 38
    .line 39
    add-int/lit8 v7, v2, -0x1

    .line 40
    .line 41
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/16 v8, 0x3a

    .line 46
    .line 47
    if-ne v7, v8, :cond_2

    .line 48
    .line 49
    add-int/lit8 v5, v2, 0x2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/16 v6, 0xa

    .line 53
    .line 54
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-ne v4, v6, :cond_3

    .line 59
    .line 60
    move v6, v0

    .line 61
    :cond_3
    invoke-static {v3}, LA/g;->n(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string v5, "\n"

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    move v9, v6

    .line 90
    move-object v6, v5

    .line 91
    move v5, v9

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-static {v3, v6}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1
.end method


# virtual methods
.method public parse(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/Tag;)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->createAnnotations(Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotatedElement;Lcom/sun/javadoc/Tag;)[Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;

    move-result-object p1

    invoke-interface {p2}, Lcom/sun/javadoc/Tag;->text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v1, v0}, Lorg/apache/xmlbeans/impl/jam/annotation/WhitespaceDelimitedTagParser;->parseAssignments(Ljava/util/Properties;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Dictionary;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->setValue([Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/jam/annotation/JavadocTagParser;->setSingleValueText([Lorg/apache/xmlbeans/impl/jam/mutable/MAnnotation;Lcom/sun/javadoc/Tag;)V

    :cond_3
    return-void
.end method
