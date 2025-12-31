.class abstract Lcom/dropbox/core/stone/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSON:Lcom/fasterxml/jackson/core/JsonFactory;

.field private static final LONG_FORMAT_LENGTH:I

.field private static final SHORT_FORMAT_LENGTH:I

.field private static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/Util;->JSON:Lcom/fasterxml/jackson/core/JsonFactory;

    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/stone/Util;->LONG_FORMAT_LENGTH:I

    const-string v0, "yyyy-MM-dd"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/dropbox/core/stone/Util;->SHORT_FORMAT_LENGTH:I

    return-void
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseTimestamp(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/dropbox/core/stone/Util;->LONG_FORMAT_LENGTH:I

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 10
    .line 11
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 12
    .line 13
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v1, Lcom/dropbox/core/stone/Util;->SHORT_FORMAT_LENGTH:I

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    const-string v1, "yyyy-MM-dd"

    .line 26
    .line 27
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v1, Ljava/util/GregorianCalendar;

    .line 33
    .line 34
    sget-object v2, Lcom/dropbox/core/stone/Util;->UTC:Ljava/util/TimeZone;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    .line 48
    .line 49
    const-string v1, "timestamp has unexpected format: \'"

    .line 50
    .line 51
    const-string v2, "\'"

    .line 52
    .line 53
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method
