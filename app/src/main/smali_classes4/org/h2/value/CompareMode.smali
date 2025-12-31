.class public Lorg/h2/value/CompareMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAN_USE_ICU4J:Z

.field public static final DEFAULT:Ljava/lang/String; = "DEFAULT_"

.field public static final ICU4J:Ljava/lang/String; = "ICU4J_"

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final SIGNED:Ljava/lang/String; = "SIGNED"

.field public static final UNSIGNED:Ljava/lang/String; = "UNSIGNED"

.field private static volatile lastUsed:Lorg/h2/value/CompareMode;


# instance fields
.field private final binaryUnsigned:Z

.field private final name:Ljava/lang/String;

.field private final strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.ibm.icu.text.Collator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/h2/value/CompareMode;->CAN_USE_ICU4J:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    iput p2, p0, Lorg/h2/value/CompareMode;->strength:I

    iput-boolean p3, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    return-void
.end method

.method public static compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/h2/value/CompareMode;->getName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getCollator(Ljava/lang/String;)Ljava/text/Collator;
    .locals 6

    const-string v0, "ICU4J_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, "DEFAULT_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-direct {v0, v1, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    :cond_3
    :goto_2
    if-nez v3, :cond_5

    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v4, v0, v2

    invoke-static {v4, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;
    .locals 1

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_BINARY_UNSIGNED:Z

    invoke-static {p0, p1, v0}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;
    .locals 2

    .line 2
    sget-object v0, Lorg/h2/value/CompareMode;->lastUsed:Lorg/h2/value/CompareMode;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    invoke-static {v1, p0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/h2/value/CompareMode;->strength:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_5

    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ICU4J_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "DEFAULT_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v0, Lorg/h2/value/CompareMode;->CAN_USE_ICU4J:Z

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lorg/h2/value/CompareModeIcu4J;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareModeIcu4J;-><init>(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/h2/value/CompareModeDefault;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareModeDefault;-><init>(Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Lorg/h2/value/CompareMode;

    invoke-direct {v0, p0, p1, p2}, Lorg/h2/value/CompareMode;-><init>(Ljava/lang/String;IZ)V

    :goto_2
    sput-object v0, Lorg/h2/value/CompareMode;->lastUsed:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public static getName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareString(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/h2/value/CompareMode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/h2/value/CompareMode;

    invoke-virtual {p0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/h2/value/CompareMode;->strength:I

    iget v3, p1, Lorg/h2/value/CompareMode;->strength:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    iget-boolean p1, p1, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p3, p4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eqz p5, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/value/CompareMode;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "OFF"

    :cond_0
    return-object v0
.end method

.method public getStrength()I
    .locals 1

    iget v0, p0, Lorg/h2/value/CompareMode;->strength:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/h2/value/CompareMode;->strength:I

    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public isBinaryUnsigned()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/value/CompareMode;->binaryUnsigned:Z

    return v0
.end method
