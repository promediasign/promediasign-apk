.class public final enum Lsk/mimac/slideshow/localization/Language;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/SelectItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsk/mimac/slideshow/localization/Language;",
        ">;",
        "Lsk/mimac/slideshow/SelectItem;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsk/mimac/slideshow/localization/Language;

.field public static final enum CROATIAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum CZECH:Lsk/mimac/slideshow/localization/Language;

.field public static final enum ENGLISH:Lsk/mimac/slideshow/localization/Language;

.field public static final enum FRENCH:Lsk/mimac/slideshow/localization/Language;

.field public static final enum GERMAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum ITALIAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum JAPANESE:Lsk/mimac/slideshow/localization/Language;

.field public static final enum KOREAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum POLISH:Lsk/mimac/slideshow/localization/Language;

.field public static final enum PORTUGESE:Lsk/mimac/slideshow/localization/Language;

.field public static final enum RUSSIAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum SLOVAK:Lsk/mimac/slideshow/localization/Language;

.field public static final enum SLOVENIAN:Lsk/mimac/slideshow/localization/Language;

.field public static final enum SPANISH:Lsk/mimac/slideshow/localization/Language;

.field public static final enum TURKISH:Lsk/mimac/slideshow/localization/Language;


# instance fields
.field private final code:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final localName:Ljava/lang/String;

.field private final localNameHtml:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;


# direct methods
.method private static synthetic $values()[Lsk/mimac/slideshow/localization/Language;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lsk/mimac/slideshow/localization/Language;

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->ENGLISH:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->CROATIAN:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->CZECH:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->FRENCH:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->GERMAN:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->ITALIAN:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->JAPANESE:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->KOREAN:Lsk/mimac/slideshow/localization/Language;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->POLISH:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->PORTUGESE:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->RUSSIAN:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->SLOVAK:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->SLOVENIAN:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->SPANISH:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lsk/mimac/slideshow/localization/Language;->TURKISH:Lsk/mimac/slideshow/localization/Language;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    new-instance v8, Lsk/mimac/slideshow/localization/Language;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "en"

    const-string v1, "ENGLISH"

    const/4 v2, 0x0

    const-string v3, "English"

    const-string v4, "&#127468;&#127463;&emsp;"

    const-string v5, "english"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v8, Lsk/mimac/slideshow/localization/Language;->ENGLISH:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v15, Ljava/util/Locale;

    const-string v1, "hr"

    invoke-direct {v15, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v16, "hr"

    const-string v10, "CROATIAN"

    const/4 v11, 0x1

    const-string v12, "Hrvatski"

    const-string v13, "&#127469;&#127479;&emsp;"

    const-string v14, "croatian"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->CROATIAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v7, Ljava/util/Locale;

    const-string v1, "cs"

    invoke-direct {v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v8, "cs"

    const-string v2, "CZECH"

    const/4 v3, 0x2

    const-string v4, "\u010ce\u0161tina"

    const-string v5, "&#127464;&#127487;&emsp;"

    const-string v6, "czech"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->CZECH:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    sget-object v15, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    const-string v16, "fr"

    const-string v10, "FRENCH"

    const/4 v11, 0x3

    const-string v12, "Fran\u00e7ais"

    const-string v13, "&#127467;&#127479;&emsp;"

    const-string v14, "french"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->FRENCH:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    sget-object v7, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    const-string v8, "de"

    const-string v2, "GERMAN"

    const/4 v3, 0x4

    const-string v4, "Deutsch"

    const-string v5, "&#127465;&#127466;&emsp;"

    const-string v6, "german"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->GERMAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    sget-object v15, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    const-string v16, "it"

    const-string v10, "ITALIAN"

    const/4 v11, 0x5

    const-string v12, "Italiano"

    const-string v13, "&#127470;&#127481;&emsp;"

    const-string v14, "italian"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->ITALIAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    sget-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    const-string v8, "ja"

    const-string v2, "JAPANESE"

    const/4 v3, 0x6

    const-string v4, "\u65e5\u672c\u8a9e"

    const-string v5, "&#127471;&#127477;&emsp;"

    const-string v6, "japanese"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->JAPANESE:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    sget-object v15, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    const-string v16, "ko"

    const-string v10, "KOREAN"

    const/4 v11, 0x7

    const-string v12, "\ud55c\uad6d\uc5b4"

    const-string v13, "&#127472;&#127479;&emsp;"

    const-string v14, "korean"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->KOREAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v7, Ljava/util/Locale;

    const-string v1, "pl"

    invoke-direct {v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v8, "pl"

    const-string v2, "POLISH"

    const/16 v3, 0x8

    const-string v4, "Polski"

    const-string v5, "&#127477;&#127473;&emsp;"

    const-string v6, "polish"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->POLISH:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v15, Ljava/util/Locale;

    const-string v1, "pt"

    invoke-direct {v15, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v16, "pt"

    const-string v10, "PORTUGESE"

    const/16 v11, 0x9

    const-string v12, "Portugu\u00eas"

    const-string v13, "&#127477;&#127481;&emsp;"

    const-string v14, "portuguese"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->PORTUGESE:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v7, Ljava/util/Locale;

    const-string v1, "ru"

    invoke-direct {v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v8, "ru"

    const-string v2, "RUSSIAN"

    const/16 v3, 0xa

    const-string v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    const-string v5, "&#127479;&#127482;&emsp;"

    const-string v6, "russian"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->RUSSIAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v15, Ljava/util/Locale;

    const-string v1, "sk"

    invoke-direct {v15, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v16, "sk"

    const-string v10, "SLOVAK"

    const/16 v11, 0xb

    const-string v12, "Sloven\u010dina"

    const-string v13, "&#127480;&#127472;&emsp;"

    const-string v14, "slovak"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->SLOVAK:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v7, Ljava/util/Locale;

    const-string v1, "sl"

    invoke-direct {v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v8, "sl"

    const-string v2, "SLOVENIAN"

    const/16 v3, 0xc

    const-string v4, "Sloven\u0161\u010dina"

    const-string v5, "&#127480;&#127470;&emsp;"

    const-string v6, "slovenian"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->SLOVENIAN:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v15, Ljava/util/Locale;

    const-string v1, "es"

    invoke-direct {v15, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v16, "es"

    const-string v10, "SPANISH"

    const/16 v11, 0xd

    const-string v12, "Espa\u00f1ol"

    const-string v13, "&#127466;&#127480;&emsp;"

    const-string v14, "spanish"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->SPANISH:Lsk/mimac/slideshow/localization/Language;

    new-instance v0, Lsk/mimac/slideshow/localization/Language;

    new-instance v7, Ljava/util/Locale;

    const-string v1, "tr"

    invoke-direct {v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v8, "tr"

    const-string v2, "TURKISH"

    const/16 v3, 0xe

    const-string v4, "T\u00fcrk\u00e7e"

    const-string v5, "&#127481;&#127479;&emsp;"

    const-string v6, "turkish"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lsk/mimac/slideshow/localization/Language;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->TURKISH:Lsk/mimac/slideshow/localization/Language;

    invoke-static {}, Lsk/mimac/slideshow/localization/Language;->$values()[Lsk/mimac/slideshow/localization/Language;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/localization/Language;->$VALUES:[Lsk/mimac/slideshow/localization/Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lsk/mimac/slideshow/localization/Language;->localName:Ljava/lang/String;

    iput-object p4, p0, Lsk/mimac/slideshow/localization/Language;->localNameHtml:Ljava/lang/String;

    iput-object p5, p0, Lsk/mimac/slideshow/localization/Language;->fileName:Ljava/lang/String;

    iput-object p6, p0, Lsk/mimac/slideshow/localization/Language;->locale:Ljava/util/Locale;

    iput-object p7, p0, Lsk/mimac/slideshow/localization/Language;->code:Ljava/lang/String;

    return-void
.end method

.method public static resolveDefaultLanguage()Lsk/mimac/slideshow/localization/Language;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/localization/Language;->values()[Lsk/mimac/slideshow/localization/Language;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lsk/mimac/slideshow/localization/Language;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/BuildInfo;->DEFAULT_LANGUAGE:Lsk/mimac/slideshow/localization/Language;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lsk/mimac/slideshow/localization/Language;
    .locals 1

    const-class v0, Lsk/mimac/slideshow/localization/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsk/mimac/slideshow/localization/Language;

    return-object p0
.end method

.method public static values()[Lsk/mimac/slideshow/localization/Language;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/localization/Language;->$VALUES:[Lsk/mimac/slideshow/localization/Language;

    invoke-virtual {v0}, [Lsk/mimac/slideshow/localization/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsk/mimac/slideshow/localization/Language;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/localization/Language;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/localization/Language;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/localization/Language;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNameHtml()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/localization/Language;->localNameHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsk/mimac/slideshow/localization/Language;->localName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/localization/Language;->locale:Ljava/util/Locale;

    return-object v0
.end method
