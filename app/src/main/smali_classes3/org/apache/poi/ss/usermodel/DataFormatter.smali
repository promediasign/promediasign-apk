.class public Lorg/apache/poi/ss/usermodel/DataFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;
    }
.end annotation


# static fields
.field private static final alternateGrouping:Ljava/util/regex/Pattern;

.field private static final amPmPattern:Ljava/util/regex/Pattern;

.field private static final colorPattern:Ljava/util/regex/Pattern;

.field private static final daysAsText:Ljava/util/regex/Pattern;

.field private static final fractionPattern:Ljava/util/regex/Pattern;

.field private static final fractionStripper:Ljava/util/regex/Pattern;

.field private static final invalidDateTimeString:Ljava/lang/String;

.field private static final localePatternGroup:Ljava/util/regex/Pattern;

.field private static logger:Lorg/apache/poi/util/POILogger;

.field private static final numPattern:Ljava/util/regex/Pattern;

.field private static final rangeConditionalPattern:Ljava/util/regex/Pattern;


# instance fields
.field private dateSymbols:Ljava/text/DateFormatSymbols;

.field private decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private defaultDateformat:Ljava/text/DateFormat;

.field private defaultNumFormat:Ljava/text/Format;

.field private final emulateCSV:Z

.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private generalNumberFormat:Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private final localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

.field private localeIsAdapting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "[0#]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    const-string v0, "([d]{3,})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    const-string v0, "((A|P)[M/P]*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    const-string v0, ".*\\[\\s*(>|>=|<|<=|=)\\s*[0-9]*\\.*[0-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\\[\\$[^-\\]]*-[0-9A-Z]+\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    const-string v0, "(\\[BLACK\\])|(\\[BLUE\\])|(\\[CYAN\\])|(\\[GREEN\\])|(\\[MAGENTA\\])|(\\[RED\\])|(\\[WHITE\\])|(\\[YELLOW\\])|(\\[COLOR\\s*\\d\\])|(\\[COLOR\\s*[0-5]\\d\\])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    const-string v0, "(?:([#\\d]+)\\s+)?(#+)\\s*\\/\\s*([#\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\"[^\"]*\")|([^ \\?#\\d\\/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    const-string v0, "([#0]([^.#0])[#0]{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    const-class v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;ZZ)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange(Ljava/util/Locale;)V

    iput-boolean p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    iput-boolean p3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 5
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/ss/usermodel/DataFormatter;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public static synthetic access$400(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return p0
.end method

.method private cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    const/16 v1, 0x2a

    const/16 v2, 0x5c

    const/16 v3, 0x5f

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge p1, v5, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x3f

    if-eq v5, v3, :cond_0

    if-eq v5, v1, :cond_0

    if-ne v5, v6, :cond_4

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_1

    goto :goto_2

    :cond_1
    const/16 v7, 0x20

    if-ne v5, v6, :cond_2

    invoke-virtual {v0, p1, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p1, v6, :cond_4

    if-ne v5, v3, :cond_3

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_3
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge p1, v5, :cond_a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_6

    if-ne v5, v1, :cond_9

    :cond_6
    if-lez p1, :cond_7

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_8

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    :cond_9
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ge v4, p1, :cond_e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_c

    const/16 v1, 0x22

    if-ne p1, v1, :cond_b

    goto :goto_6

    :cond_b
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_d

    if-lez v4, :cond_d

    add-int/lit8 p1, v4, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0x45

    if-ne p1, v1, :cond_d

    :cond_c
    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createDateFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v0, "\\\\-"

    .line 5
    .line 6
    const-string v3, "-"

    .line 7
    .line 8
    move-object/from16 v4, p1

    .line 9
    .line 10
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v3, "\\\\,"

    .line 15
    .line 16
    const-string v4, ","

    .line 17
    .line 18
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "\\\\\\."

    .line 23
    .line 24
    const-string v4, "."

    .line 25
    .line 26
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v3, "\\\\ "

    .line 31
    .line 32
    const-string v4, " "

    .line 33
    .line 34
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "\\\\/"

    .line 39
    .line 40
    const-string v4, "/"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, ";@"

    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v3, "\"/\""

    .line 55
    .line 56
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v3, "\"\""

    .line 61
    .line 62
    const-string v4, "\'"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v3, "\\\\T"

    .line 69
    .line 70
    const-string v4, "\'T\'"

    .line 71
    .line 72
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const-string v7, "@"

    .line 89
    .line 90
    if-eqz v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v5, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const-string v3, "a"

    .line 105
    .line 106
    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_1

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 127
    .line 128
    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v6, "D"

    .line 133
    .line 134
    const-string v7, "E"

    .line 135
    .line 136
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v6, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x1

    .line 161
    :goto_1
    array-length v10, v0

    .line 162
    if-ge v7, v10, :cond_1b

    .line 163
    .line 164
    aget-char v10, v0, v7

    .line 165
    .line 166
    const/16 v11, 0x27

    .line 167
    .line 168
    if-ne v10, v11, :cond_3

    .line 169
    .line 170
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :cond_2
    add-int/2addr v7, v2

    .line 174
    array-length v10, v0

    .line 175
    if-ge v7, v10, :cond_1a

    .line 176
    .line 177
    aget-char v10, v0, v7

    .line 178
    .line 179
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    if-ne v10, v11, :cond_2

    .line 183
    .line 184
    goto/16 :goto_d

    .line 185
    .line 186
    :cond_3
    const/16 v11, 0x5b

    .line 187
    .line 188
    if-ne v10, v11, :cond_4

    .line 189
    .line 190
    if-nez v8, :cond_4

    .line 191
    .line 192
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const/4 v8, 0x1

    .line 196
    :goto_2
    const/4 v9, 0x0

    .line 197
    goto/16 :goto_d

    .line 198
    .line 199
    :cond_4
    const/16 v11, 0x5d

    .line 200
    .line 201
    if-ne v10, v11, :cond_5

    .line 202
    .line 203
    if-eqz v8, :cond_5

    .line 204
    .line 205
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    goto/16 :goto_d

    .line 210
    .line 211
    :cond_5
    const/16 v11, 0x53

    .line 212
    .line 213
    const/16 v12, 0x68

    .line 214
    .line 215
    const/16 v13, 0x73

    .line 216
    .line 217
    const/16 v14, 0x4d

    .line 218
    .line 219
    const/16 v15, 0x6d

    .line 220
    .line 221
    const/16 v4, 0x48

    .line 222
    .line 223
    if-eqz v8, :cond_c

    .line 224
    .line 225
    if-eq v10, v12, :cond_b

    .line 226
    .line 227
    if-ne v10, v4, :cond_6

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_6
    if-eq v10, v15, :cond_a

    .line 231
    .line 232
    if-ne v10, v14, :cond_7

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_7
    if-eq v10, v13, :cond_9

    .line 236
    .line 237
    if-ne v10, v11, :cond_8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    :goto_3
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    goto/16 :goto_d

    .line 244
    .line 245
    :cond_9
    :goto_4
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    goto/16 :goto_d

    .line 249
    .line 250
    :cond_a
    :goto_5
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    goto/16 :goto_d

    .line 254
    .line 255
    :cond_b
    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    goto/16 :goto_d

    .line 259
    .line 260
    :cond_c
    if-eq v10, v12, :cond_18

    .line 261
    .line 262
    if-ne v10, v4, :cond_d

    .line 263
    .line 264
    goto/16 :goto_c

    .line 265
    .line 266
    :cond_d
    if-eq v10, v15, :cond_17

    .line 267
    .line 268
    if-ne v10, v14, :cond_e

    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_e
    if-eq v10, v13, :cond_14

    .line 272
    .line 273
    if-ne v10, v11, :cond_f

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_f
    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-eqz v4, :cond_13

    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 283
    .line 284
    .line 285
    const/16 v4, 0x79

    .line 286
    .line 287
    if-eq v10, v4, :cond_12

    .line 288
    .line 289
    const/16 v9, 0x59

    .line 290
    .line 291
    if-ne v10, v9, :cond_10

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_10
    const/16 v4, 0x64

    .line 295
    .line 296
    if-eq v10, v4, :cond_12

    .line 297
    .line 298
    const/16 v9, 0x44

    .line 299
    .line 300
    if-ne v10, v9, :cond_11

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_11
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_12
    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    :goto_8
    const/4 v9, 0x1

    .line 311
    goto :goto_d

    .line 312
    :cond_13
    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_8

    .line 317
    .line 318
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 319
    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_14
    :goto_9
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    :cond_15
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    if-eqz v9, :cond_16

    .line 334
    .line 335
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    check-cast v9, Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    if-ne v10, v14, :cond_15

    .line 350
    .line 351
    add-int/lit8 v10, v9, 0x1

    .line 352
    .line 353
    const-string v11, "m"

    .line 354
    .line 355
    invoke-virtual {v3, v9, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_16
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_17
    :goto_b
    if-eqz v9, :cond_a

    .line 364
    .line 365
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    sub-int/2addr v4, v2

    .line 373
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_18
    :goto_c
    if-eqz v5, :cond_19

    .line 382
    .line 383
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    goto/16 :goto_2

    .line 387
    .line 388
    :cond_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :cond_1a
    :goto_d
    add-int/2addr v7, v2

    .line 394
    const/4 v4, 0x0

    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    .line 402
    .line 403
    iget-object v4, v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    .line 404
    .line 405
    invoke-direct {v0, v3, v4}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .line 407
    .line 408
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    .line 411
    .line 412
    const-string v5, "Formatting failed for format "

    .line 413
    .line 414
    const-string v6, ", falling back"

    .line 415
    .line 416
    invoke-static {v5, v3, v6}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    const/4 v5, 0x2

    .line 421
    new-array v5, v5, [Ljava/lang/Object;

    .line 422
    .line 423
    const/4 v6, 0x0

    .line 424
    aput-object v3, v5, v6

    .line 425
    .line 426
    aput-object v0, v5, v2

    .line 427
    .line 428
    invoke-virtual {v4, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    move-wide/from16 v2, p2

    .line 432
    .line 433
    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    return-object v0
.end method

.method private createFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 1
    invoke-static {p4, v0, v4}, Ls/a;->c(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    move-object v6, v0

    move-object v0, p4

    move-object p4, v6

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0x24

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x2d

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-le v4, v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_3
    invoke-virtual {v0, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v0, "General"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "@"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-direct {p0, p4, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createDateFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p3, "#/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    const-string p3, "?/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    sget-object p3, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-direct {p0, p4, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object p1

    return-object p1

    :cond_9
    iget-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz p1, :cond_a

    new-instance p1, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;

    invoke-direct {p0, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_2
    const-string p1, ";"

    invoke-virtual {p4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_3
    const-string p3, "#"

    if-ge v3, p2, :cond_e

    aget-object p4, p1, v3

    const-string v0, "\\?"

    invoke-virtual {p4, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, " +"

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p4, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    const-string p3, ""

    :cond_c
    new-instance p1, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const/4 p2, 0x3

    invoke-virtual {p4, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    new-instance p1, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const-string p2, "#/##"

    invoke-direct {p1, p3, p2}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_f
    :goto_4
    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p1

    :cond_10
    :goto_5
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object p1

    return-object p1
.end method

.method private static createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    return-object v1
.end method

.method private createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    .line 8
    .line 9
    sget-object v4, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/16 v7, 0x2c

    .line 31
    .line 32
    if-eq v5, v7, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-static {v3}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v5}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_0
    :try_start_0
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;

    .line 56
    .line 57
    invoke-direct {v4, v2, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    return-object v4

    .line 61
    :catch_0
    move-exception v2

    .line 62
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    .line 63
    .line 64
    const-string v4, "Formatting failed for format "

    .line 65
    .line 66
    const-string v5, ", falling back"

    .line 67
    .line 68
    invoke-static {v4, p1, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object p1, v1, v0

    .line 75
    .line 76
    aput-object v2, v1, v6

    .line 77
    .line 78
    invoke-virtual {v3, v6, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method private getDefaultFormat(D)Ljava/text/Format;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p1
.end method

.method private getFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    const-string v0, ";"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x3b

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {v0, p4}, Lorg/apache/poi/ss/format/CellFormat;->getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-eqz v6, :cond_1

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v4, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;

    invoke-virtual {v0, v3}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v4, p0, v0, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->logger:Lorg/apache/poi/util/POILogger;

    const-string v4, "Formatting failed for format "

    const-string v5, ", falling back"

    .line 1
    invoke-static {v4, p4, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 2
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v0, v5, v4

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz v0, :cond_3

    cmpl-double v0, p1, v1

    if-nez v0, :cond_3

    const-string v0, "#"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const-string v0, "General"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "@"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p1
.end method

.method private getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;
    .locals 4

    .line 8
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object p2

    instance-of v0, p2, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    if-nez p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "E(\\d)"

    const-string v0, "E+$1"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    return-void
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method


# virtual methods
.method public addFormat(Ljava/lang/String;Ljava/text/Format;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4

    .line 6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p1

    return-object p1
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    :cond_2
    sget-object p2, Lorg/apache/poi/ss/usermodel/DataFormatter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_8

    const/4 p3, 0x2

    if-eq p2, p3, :cond_7

    const/4 p3, 0x3

    if-eq p2, p3, :cond_5

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected celltype ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0

    :cond_5
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "TRUE"

    goto :goto_0

    :cond_6
    const-string p1, "FALSE"

    :goto_0
    return-object p1

    :cond_7
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-static {p1, p3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;->checkForLocaleChange()V

    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p3

    instance-of p4, p3, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz p4, :cond_0

    move-object p4, p3

    check-cast p4, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-virtual {p4, p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    :cond_0
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean p5, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz p5, :cond_2

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    return-object p1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x45

    invoke-virtual {p4, p5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    new-instance p4, Ljava/lang/Double;

    invoke-direct {p4, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-le p2, v1, :cond_5

    const-string p2, "E-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "E"

    const-string p3, "E+"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public getDefaultFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 2

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object p1

    return-object p1
.end method

.method public getLocaleChangedObservable()Ljava/util/Observable;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeChangedObservable:Lorg/apache/poi/ss/usermodel/DataFormatter$LocaleChangeObservable;

    return-object v0
.end method

.method public setDefaultNumberFormat(Ljava/text/Format;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    if-ne v2, v3, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Ljava/util/Locale;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p2, Ljava/util/Locale;

    iget-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    new-instance p1, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;

    iget-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "EEE MMM dd HH:mm:ss zzz yyyy"

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    const-string p2, "00000\\-0000"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string p2, "00000-0000"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    const-string p2, "[<=9999999]###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string p2, "[<=9999999]###-####;(###) ###-####"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string p2, "###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string p2, "###-####;(###) ###-####"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;->instance:Ljava/text/Format;

    const-string p2, "000\\-00\\-0000"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string p2, "000-00-0000"

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    :cond_2
    :goto_0
    return-void
.end method
