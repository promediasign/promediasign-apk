.class public Lorg/apache/poi/ss/format/CellFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GENERAL_FORMAT:Lorg/apache/poi/ss/format/CellFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation
.end field

.field private static final ONE_PART:Ljava/util/regex/Pattern;

.field private static QUOTE:Ljava/lang/String;

.field private static final formatCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/format/CellFormat;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final format:Ljava/lang/String;

.field private final formatPartCount:I

.field private final locale:Ljava/util/Locale;

.field private final negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

.field private final zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormatPart;->FORMAT_PAT:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(;|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    const-string v0, "\""

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/format/CellFormat;->createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->GENERAL_FORMAT:Lorg/apache/poi/ss/format/CellFormat;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    new-instance v0, Lorg/apache/poi/ss/format/CellFormatPart;

    const-string v1, "@"

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->ONE_PART:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v4, Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-direct {v4, p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    sget-object v4, Lorg/apache/poi/ss/format/CellFormatter;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid format: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/format/CellFormatter;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    if-eq p1, v4, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_5

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    :goto_3
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_5

    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    :goto_4
    iput-object v3, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    iput-object v3, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    goto :goto_4

    :goto_5
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Locale;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormat$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-void
.end method

.method private apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1
.end method

.method private apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p2

    iget-object p3, p2, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    iget-object p3, p2, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p2
.end method

.method private static createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/format/CellFormat$1;

    const-string v1, "General"

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/poi/ss/format/CellFormat$1;-><init>(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;
    .locals 5

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/format/CellFormatPart;

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->locale:Ljava/util/Locale;

    const-string v1, "General"

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_2
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_3

    cmpl-double p1, v0, v3

    if-gez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_5
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lorg/apache/poi/ss/format/CellFormatPart;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->QUOTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_8
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_9

    cmpl-double p1, v0, v3

    if-gtz p1, :cond_a

    :cond_9
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_b
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_c

    cmpg-double p1, v0, v3

    if-ltz p1, :cond_d

    :cond_c
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->applies(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_e
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->zeroNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    return-object p1

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must be a Number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/poi/ss/format/CellFormat;->getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;
    .locals 3

    .line 2
    const-class v0, Lorg/apache/poi/ss/format/CellFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/ss/format/CellFormat;->formatCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/format/CellFormat;

    if-nez v1, :cond_3

    const-string v1, "General"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/apache/poi/ss/format/CellFormat;

    invoke-direct {v1, p0, p1}, Lorg/apache/poi/ss/format/CellFormat;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormat;->createGeneralFormat(Ljava/util/Locale;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object p0

    move-object v1, p0

    :goto_2
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public static ultimateType(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/format/CellFormat;->ultimateTypeEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p0

    return p0
.end method

.method public static ultimateTypeEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->posNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p1, p0, Lorg/apache/poi/ss/format/CellFormat;->formatPartCount:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {p1}, Lorg/apache/poi/ss/format/CellFormatPart;->hasCondition()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/ss/format/CellFormat;->negNumFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "value "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid Excel date"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->textFmt:Lorg/apache/poi/ss/format/CellFormatPart;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/format/CellFormatPart;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 1

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p2

    iget-object v0, p2, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    iget-object v0, p2, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljavax/swing/JLabel;->setForeground(Ljava/awt/Color;)V

    :cond_0
    return-object p2
.end method

.method public apply(Ljavax/swing/JLabel;Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 5

    .line 5
    sget-object v0, Lorg/apache/poi/ss/format/CellFormat$2;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p2}, Lorg/apache/poi/ss/format/CellFormat;->ultimateTypeEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p2, "?"

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v3, v4, :cond_3

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1, v2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p2}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljavax/swing/JLabel;Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/format/CellFormatResult;
    .locals 5

    .line 6
    sget-object v0, Lorg/apache/poi/ss/format/CellFormat$2;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-static {p1}, Lorg/apache/poi/ss/format/CellFormat;->ultimateTypeEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "?"

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->getApplicableFormatPart(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatPart;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/ss/format/CellFormatPart;->getCellFormatType()Lorg/apache/poi/ss/format/CellFormatType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/format/CellFormatType;->DATE:Lorg/apache/poi/ss/format/CellFormatType;

    if-ne v3, v4, :cond_3

    invoke-static {v0, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/util/Date;D)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "###############################################################################################################################################################################################################################################################"

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/format/CellFormat;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/format/CellFormat;

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellFormat;->format:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
