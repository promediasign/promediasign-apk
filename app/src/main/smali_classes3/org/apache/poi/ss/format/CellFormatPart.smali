.class public Lorg/apache/poi/ss/format/CellFormatPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;
    }
.end annotation


# static fields
.field public static final COLOR_GROUP:I

.field public static final COLOR_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_OPERATOR_GROUP:I

.field public static final CONDITION_PAT:Ljava/util/regex/Pattern;

.field public static final CONDITION_VALUE_GROUP:I

.field public static final CURRENCY_PAT:Ljava/util/regex/Pattern;

.field public static final FORMAT_PAT:Ljava/util/regex/Pattern;

.field private static final NAMED_COLORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/awt/Color;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIFICATION_GROUP:I

.field public static final SPECIFICATION_PAT:Ljava/util/regex/Pattern;


# instance fields
.field private final color:Ljava/awt/Color;

.field private condition:Lorg/apache/poi/ss/format/CellFormatCondition;

.field private final format:Lorg/apache/poi/ss/format/CellFormatter;

.field private final type:Lorg/apache/poi/ss/format/CellFormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndexHash()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/util/HSSFColor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object v1

    new-instance v3, Ljava/awt/Color;

    const/4 v4, 0x0

    aget-short v4, v1, v4

    const/4 v5, 0x1

    aget-short v5, v1, v5

    const/4 v6, 0x2

    aget-short v1, v1, v6

    invoke-direct {v3, v4, v5, v1}, Ljava/awt/Color;-><init>(III)V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v6, 0x20

    if-lez v5, :cond_1

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v5, "_PERCENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "%"

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)\\]"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_PAT:Ljava/util/regex/Pattern;

    const-string v0, "([<>=]=?|!=|<>)    # The operator\n  \\s*([0-9]+(?:\\.[0-9]*)?)\\s*  # The constant to test against\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_PAT:Ljava/util/regex/Pattern;

    const-string v0, "\\\\.                 # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|(\\[\\$.{0,3}-[0-9a-f]{3}\\])                   # Currency symbol in a given locale\n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#](?:[0?\\#,]*))         # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}\\]                   # Elapsed time: hour spec\n|\\[m{1,2}\\]                   # Elapsed time: minute spec\n|\\[s{1,2}\\]                   # Elapsed time: second spec\n|[^;]                           # A character\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    const-string v0, "(\\[\\$.{0,3}-[0-9a-f]{3}\\])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CURRENCY_PAT:Ljava/util/regex/Pattern;

    const-string v0, "(?:\\[(black|blue|cyan|green|magenta|red|white|yellow|color [0-9]+)\\])?                 # Text color\n(?:\\[([<>=]=?|!=|<>)    # The operator\n  \\s*([0-9]+(?:\\.[0-9]*)?)\\s*  # The constant to test against\n\\])?               # Condition\n(?:\\[\\$-[0-9a-fA-F]+\\])?                # Optional locale id, ignored currently\n((?:\\\\.                 # Quoted single character\n|\"([^\\\\\"]|\\\\.)*\"         # Quoted string of characters (handles escaped quotes like \\\") \n|(\\[\\$.{0,3}-[0-9a-f]{3}\\])                   # Currency symbol in a given locale\n|_.                             # Space as wide as a given character\n|\\*.                           # Repeating fill character\n|@                              # Text: cell text\n|([0?\\#](?:[0?\\#,]*))         # Number: digit + other digits and commas\n|e[-+]                          # Number: Scientific: Exponent\n|m{1,5}                         # Date: month or minute spec\n|d{1,4}                         # Date: day/date spec\n|y{2,4}                         # Date: year spec\n|h{1,2}                         # Date: hour spec\n|s{1,2}                         # Date: second spec\n|am?/pm?                        # Date: am/pm spec\n|\\[h{1,2}\\]                   # Elapsed time: hour spec\n|\\[m{1,2}\\]                   # Elapsed time: minute spec\n|\\[s{1,2}\\]                   # Elapsed time: second spec\n|[^;]                           # A character\n)+)                        # Format spec\n"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    const-string v1, "[Blue]@"

    const-string v2, "Blue"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    const-string v1, ">="

    const-string v2, "[>=1]@"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    const-string v1, "1"

    invoke-static {v0, v2, v1}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    const-string v1, "[Blue][>1]\\a ?"

    const-string v2, "\\a ?"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->getFormatter(Ljava/util/Locale;Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static expandChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findGroup(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "\""

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-gt p1, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    return p1

    .line 33
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "\" not found in \""

    .line 39
    .line 40
    invoke-static {v2, p2, v0}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "Pattern \""

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, "\" doesn\'t match \""

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p2
.end method

.method private formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_9

    .line 12
    .line 13
    const-string v0, "General"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_6

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-lez v5, :cond_1

    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x1

    .line 57
    if-le v6, v7, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v6, 0x0

    .line 69
    :goto_1
    sparse-switch v5, :sswitch_data_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :sswitch_0
    const/16 v0, 0x68

    .line 74
    .line 75
    if-eq v6, v0, :cond_5

    .line 76
    .line 77
    const/16 v0, 0x6d

    .line 78
    .line 79
    if-eq v6, v0, :cond_5

    .line 80
    .line 81
    const/16 v0, 0x73

    .line 82
    .line 83
    if-ne v6, v0, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    const/16 v0, 0x24

    .line 87
    .line 88
    if-ne v6, v0, :cond_4

    .line 89
    .line 90
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string v1, "Unsupported [] format block \'"

    .line 96
    .line 97
    const-string v2, "\' in \'"

    .line 98
    .line 99
    const-string v3, "\' with c2: "

    .line 100
    .line 101
    invoke-static {v1, v4, v2, p1, v3}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_5
    :goto_2
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->ELAPSED:Lorg/apache/poi/ss/format/CellFormatType;

    .line 117
    .line 118
    return-object p1

    .line 119
    :sswitch_1
    const/4 v2, 0x1

    .line 120
    goto :goto_0

    .line 121
    :sswitch_2
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    .line 122
    .line 123
    return-object p1

    .line 124
    :sswitch_3
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    .line 125
    .line 126
    return-object p1

    .line 127
    :sswitch_4
    const/4 v3, 0x1

    .line 128
    goto :goto_0

    .line 129
    :sswitch_5
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_6
    if-eqz v2, :cond_7

    .line 133
    .line 134
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    .line 135
    .line 136
    return-object p1

    .line 137
    :cond_7
    if-eqz v3, :cond_8

    .line 138
    .line 139
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->NUMBER:Lorg/apache/poi/ss/format/CellFormatType;

    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_8
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->TEXT:Lorg/apache/poi/ss/format/CellFormatType;

    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_9
    :goto_3
    sget-object p1, Lorg/apache/poi/ss/format/CellFormatType;->GENERAL:Lorg/apache/poi/ss/format/CellFormatType;

    .line 146
    .line 147
    return-object p1

    .line 148
    nop

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_5
        0x30 -> :sswitch_4
        0x3f -> :sswitch_5
        0x40 -> :sswitch_3
        0x44 -> :sswitch_2
        0x48 -> :sswitch_1
        0x4d -> :sswitch_1
        0x53 -> :sswitch_1
        0x59 -> :sswitch_2
        0x5b -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6d -> :sswitch_1
        0x73 -> :sswitch_1
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private getCellFormatType(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1

    .line 2
    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->formatType(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object p1

    return-object p1
.end method

.method private static getColor(Ljava/util/regex/Matcher;)Ljava/awt/Color;
    .locals 4

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->COLOR_GROUP:I

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->NAMED_COLORS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    if-nez v0, :cond_1

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatter;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown color: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCondition(Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 2

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_OPERATOR_GROUP:I

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/apache/poi/ss/format/CellFormatPart;->CONDITION_VALUE_GROUP:I

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/poi/ss/format/CellFormatCondition;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFormatter(Ljava/util/Locale;Ljava/util/regex/Matcher;)Lorg/apache/poi/ss/format/CellFormatter;
    .locals 3

    sget v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_GROUP:I

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->CURRENCY_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[$-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "$"

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/ss/format/CellFormatType;->formatter(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatter;

    move-result-object p1

    return-object p1
.end method

.method public static group(Ljava/util/regex/Matcher;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static parseFormat(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;)Ljava/lang/StringBuffer;
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/format/CellFormatPart;->SPECIFICATION_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-static {p0, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->group(Ljava/util/regex/Matcher;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p2, p0, v1, p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;->handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, " "

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lorg/apache/poi/ss/format/CellFormatPart;->expandChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_2
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    :goto_3
    const-string p1, "\'\'"

    invoke-virtual {v0, p1, p0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_7

    add-int/lit8 p1, p0, 0x2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    :goto_4
    const-string p0, "\u0000"

    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_8

    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, v2, p0, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    return-object v0
.end method

.method public static quoteSpecial(Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v4}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Lorg/apache/poi/ss/format/CellFormatType;->isSpecial(C)Z

    move-result v4

    const-string v5, "\'"

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applies(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz v0, :cond_1

    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition;->pass(D)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "valueObject"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/format/CellFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/ss/format/CellFormatPart;->color:Ljava/awt/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/format/CellFormatter;->simpleFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lorg/apache/poi/ss/format/CellFormatResult;

    invoke-direct {v2, v0, p1, v1}, Lorg/apache/poi/ss/format/CellFormatResult;-><init>(ZLjava/lang/String;Ljava/awt/Color;)V

    return-object v2
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 1

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p2

    iget-object v0, p2, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    iget-object v0, p2, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p2
.end method

.method public getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->type:Lorg/apache/poi/ss/format/CellFormatType;

    return-object v0
.end method

.method public hasCondition()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->condition:Lorg/apache/poi/ss/format/CellFormatCondition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormatPart;->format:Lorg/apache/poi/ss/format/CellFormatter;

    iget-object v0, v0, Lorg/apache/poi/ss/format/CellFormatter;->format:Ljava/lang/String;

    return-object v0
.end method
