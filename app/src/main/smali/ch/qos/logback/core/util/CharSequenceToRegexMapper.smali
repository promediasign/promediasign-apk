.class Lch/qos/logback/core/util/CharSequenceToRegexMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field symbols:Ljava/text/DateFormatSymbols;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/DateFormatSymbols;->getInstance()Ljava/text/DateFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method public static findMinMaxLengthsInSymbols([Ljava/lang/String;)[I
    .locals 5

    array-length v0, p0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    filled-new-array {v1, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method private getRegexForAmPms()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForLongDaysOfTheWeek()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForLongMonths()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegexForShortDaysOfTheWeek()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private number(I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "\\d{"

    .line 2
    .line 3
    const-string v1, "}"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->findMinMaxLengthsInSymbols([Ljava/lang/String;)[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, ".{"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget v1, p1, v1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ","

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aget p1, p1, v1

    .line 25
    .line 26
    const-string v1, "}"

    .line 27
    .line 28
    invoke-static {v1, p1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method


# virtual methods
.method public getRegexForShortMonths()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbols:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->symbolArrayToRegex([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRegex(Lch/qos/logback/core/util/CharSequenceState;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Lch/qos/logback/core/util/CharSequenceState;->occurrences:I

    iget-char p1, p1, Lch/qos/logback/core/util/CharSequenceState;->c:C

    const/16 v1, 0x79

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7a

    if-eq p1, v1, :cond_5

    const-string v1, ""

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "{"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/4 p1, 0x4

    if-lt v0, p1, :cond_1

    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForLongDaysOfTheWeek()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForShortDaysOfTheWeek()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForAmPms()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Forward slashes are not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_2
    const-string p1, "(\\+|-)\\d{4}"

    return-object p1

    :sswitch_3
    const/4 p1, 0x2

    if-gt v0, p1, :cond_2

    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->number(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForShortMonths()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->getRegexForLongMonths()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string p1, "\\."

    return-object p1

    :sswitch_5
    if-ne v0, v2, :cond_4

    return-object v1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many single quotes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :pswitch_1
    const-string p1, ".*"

    return-object p1

    :cond_6
    :pswitch_2
    :sswitch_6
    invoke-direct {p0, v0}, Lch/qos/logback/core/util/CharSequenceToRegexMapper;->number(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_5
        0x2e -> :sswitch_4
        0x4b -> :sswitch_6
        0x4d -> :sswitch_3
        0x53 -> :sswitch_6
        0x57 -> :sswitch_6
        0x5a -> :sswitch_2
        0x5c -> :sswitch_1
        0x61 -> :sswitch_0
        0x64 -> :sswitch_6
        0x68 -> :sswitch_6
        0x6b -> :sswitch_6
        0x6d -> :sswitch_6
        0x73 -> :sswitch_6
        0x77 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
