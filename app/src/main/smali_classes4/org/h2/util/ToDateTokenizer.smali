.class Lorg/h2/util/ToDateTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/ToDateTokenizer$FormatTokenEnum;,
        Lorg/h2/util/ToDateTokenizer$TimeParslet;,
        Lorg/h2/util/ToDateTokenizer$DayParslet;,
        Lorg/h2/util/ToDateTokenizer$MonthParslet;,
        Lorg/h2/util/ToDateTokenizer$YearParslet;,
        Lorg/h2/util/ToDateTokenizer$ToDateParslet;
    }
.end annotation


# static fields
.field static final MILLIS_IN_HOUR:I = 0x36ee80

.field static final PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

.field static final PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

.field static final PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

.field static final PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

.field static final PATTERN_AM_PM:Ljava/util/regex/Pattern;

.field static final PATTERN_BC_AD:Ljava/util/regex/Pattern;

.field static final PATTERN_FF:Ljava/util/regex/Pattern;

.field static final PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_NUMBER:Ljava/util/regex/Pattern;

.field static final PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

.field static final PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

.field static final PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^([+-]?[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_NUMBER:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_FOUR_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_TO_FOUR_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_THREE_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9][0-9]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_TWO_DIGITS_OR_LESS:Ljava/util/regex/Pattern;

    const-string v0, "^([+-]?[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_ONE_DIGIT:Ljava/util/regex/Pattern;

    const-string v0, "^(FF[0-9]?)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_FF:Ljava/util/regex/Pattern;

    const-string v0, "^(AM|A\\.M\\.|PM|P\\.M\\.)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_AM_PM:Ljava/util/regex/Pattern;

    const-string v0, "^(BC|B\\.C\\.|AD|A\\.D\\.)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PATTERN_BC_AD:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/h2/util/ToDateTokenizer$YearParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$YearParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_YEAR:Lorg/h2/util/ToDateTokenizer$YearParslet;

    new-instance v0, Lorg/h2/util/ToDateTokenizer$MonthParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$MonthParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_MONTH:Lorg/h2/util/ToDateTokenizer$MonthParslet;

    new-instance v0, Lorg/h2/util/ToDateTokenizer$DayParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$DayParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_DAY:Lorg/h2/util/ToDateTokenizer$DayParslet;

    new-instance v0, Lorg/h2/util/ToDateTokenizer$TimeParslet;

    invoke-direct {v0}, Lorg/h2/util/ToDateTokenizer$TimeParslet;-><init>()V

    sput-object v0, Lorg/h2/util/ToDateTokenizer;->PARSLET_TIME:Lorg/h2/util/ToDateTokenizer$TimeParslet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchStringOrThrow(Ljava/util/regex/Pattern;Lorg/h2/util/ToDateParser;Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Lorg/h2/util/ToDateParser;",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "Issue happened when parsing token \'"

    .line 20
    .line 21
    const-string v1, "\'"

    .line 22
    .line 23
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static setByName(Ljava/util/Calendar;Lorg/h2/util/ToDateParser;II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/h2/util/ToDateParser;->getInputStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, p2, p3, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v0

    const-string p0, "Tried to parse one of \'%s\' but failed (may be an internal error?)"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/h2/util/ToDateTokenizer;->throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V

    :cond_3
    return-object v3
.end method

.method public static throwException(Lorg/h2/util/ToDateParser;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/h2/util/ToDateParser;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " %s. Details: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    const p1, 0x15fc8

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method
