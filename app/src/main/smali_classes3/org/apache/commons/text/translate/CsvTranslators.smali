.class public abstract Lorg/apache/commons/text/translate/CsvTranslators;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/translate/CsvTranslators$CsvUnescaper;,
        Lorg/apache/commons/text/translate/CsvTranslators$CsvEscaper;
    }
.end annotation


# static fields
.field private static final CSV_ESCAPED_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_QUOTE_STR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_ESCAPED_QUOTE_STR:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [C

    .line 17
    .line 18
    fill-array-data v0, :array_0

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_SEARCH_CHARS:[C

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public static synthetic access$000()[C
    .locals 1

    sget-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_SEARCH_CHARS:[C

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_QUOTE_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/translate/CsvTranslators;->CSV_ESCAPED_QUOTE_STR:Ljava/lang/String;

    return-object v0
.end method
