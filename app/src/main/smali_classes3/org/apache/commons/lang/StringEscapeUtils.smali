.class public abstract Lorg/apache/commons/lang/StringEscapeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang/StringEscapeUtils;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    invoke-static {v0, p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unescapeJava(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 10

    .line 2
    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x5c

    if-ge v4, v0, :cond_d

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v6, :cond_1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v2, :cond_c

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/lang/exception/NestableRuntimeException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "Unable to parse unicode value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/lang/exception/NestableRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 v9, 0x1

    if-eqz v5, :cond_a

    const/16 v5, 0x22

    if-eq v8, v5, :cond_4

    const/16 v5, 0x27

    if-eq v8, v5, :cond_4

    if-eq v8, v7, :cond_9

    const/16 v5, 0x62

    if-eq v8, v5, :cond_8

    const/16 v5, 0x66

    if-eq v8, v5, :cond_7

    const/16 v5, 0x6e

    if-eq v8, v5, :cond_6

    const/16 v5, 0x72

    if-eq v8, v5, :cond_5

    const/16 v5, 0x74

    if-eq v8, v5, :cond_3

    const/16 v5, 0x75

    if-eq v8, v5, :cond_2

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/16 v5, 0x9

    :cond_4
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    :cond_5
    const/16 v5, 0xd

    goto :goto_1

    :cond_6
    const/16 v5, 0xa

    goto :goto_1

    :cond_7
    const/16 v5, 0xc

    goto :goto_1

    :cond_8
    const/16 v5, 0x8

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    if-ne v8, v7, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(I)V

    :cond_c
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The Writer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unescapeJavaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
