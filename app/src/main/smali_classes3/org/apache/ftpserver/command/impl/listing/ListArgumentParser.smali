.class public Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsPattern(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/ftpserver/command/impl/listing/ListArgument;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "./"

    const-string v3, ""

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, p0, v7, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object p0, v2

    move-object v4, v3

    :goto_2
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "*"

    if-ne v5, v6, :cond_7

    invoke-static {p0}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-eq v5, v2, :cond_a

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    move-object p0, v1

    goto :goto_3

    :cond_8
    move-object v2, p0

    move-object p0, v7

    :goto_3
    invoke-static {v2}, Lorg/apache/ftpserver/command/impl/listing/ListArgumentParser;->containsPattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Directory path can not contain regular expression"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move-object v2, p0

    move-object p0, v7

    :goto_4
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    const/4 p0, 0x0

    :cond_c
    new-instance v0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v2, p0, v1}, Lorg/apache/ftpserver/command/impl/listing/ListArgument;-><init>(Ljava/lang/String;Ljava/lang/String;[C)V

    return-object v0
.end method
