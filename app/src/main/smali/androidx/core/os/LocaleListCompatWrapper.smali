.class final Landroidx/core/os/LocaleListCompatWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# static fields
.field private static final EN_LATN:Ljava/util/Locale;

.field private static final LOCALE_AR_XB:Ljava/util/Locale;

.field private static final LOCALE_EN_XA:Ljava/util/Locale;

.field private static final sEmptyList:[Ljava/util/Locale;


# instance fields
.field private final mList:[Ljava/util/Locale;

.field private final mStringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "XA"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_EN_XA:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    const-string v2, "XB"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->LOCALE_AR_XB:Ljava/util/Locale;

    const-string v0, "en-Latn"

    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTagCompat(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroidx/core/os/LocaleListCompatWrapper;->EN_LATN:Ljava/util/Locale;

    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Locale;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Landroidx/core/os/LocaleListCompatWrapper;->sEmptyList:[Ljava/util/Locale;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    array-length v5, p1

    .line 34
    if-ge v4, v5, :cond_4

    .line 35
    .line 36
    aget-object v5, p1, v4

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_2

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Ljava/util/Locale;

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v5}, Landroidx/core/os/LocaleListCompatWrapper;->toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 56
    .line 57
    .line 58
    array-length v6, p1

    .line 59
    add-int/lit8 v6, v6, -0x1

    .line 60
    .line 61
    if-ge v4, v6, :cond_1

    .line 62
    .line 63
    const/16 v6, 0x2c

    .line 64
    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 75
    .line 76
    const-string v0, "list["

    .line 77
    .line 78
    const-string v1, "] is null"

    .line 79
    .line 80
    invoke-static {v4, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_4
    new-array p1, v3, [Ljava/util/Locale;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, [Ljava/util/Locale;

    .line 95
    .line 96
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    .line 103
    .line 104
    :goto_1
    return-void
.end method

.method public static toLanguageTag(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/os/LocaleListCompatWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/os/LocaleListCompatWrapper;

    iget-object p1, p1, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    iget-object v1, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v1

    array-length v3, p1

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v4}, Ljava/util/Locale;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListCompatWrapper;->mStringRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/core/os/LocaleListCompatWrapper;->mList:[Ljava/util/Locale;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
