.class public Lorg/h2/value/CompareModeIcu4J;
.super Lorg/h2/value/CompareMode;
.source "SourceFile"


# instance fields
.field private final collator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/value/CompareMode;-><init>(Ljava/lang/String;IZ)V

    invoke-static {p1, p2}, Lorg/h2/value/CompareModeIcu4J;->getIcu4jCollator(Ljava/lang/String;I)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/value/CompareModeIcu4J;->collator:Ljava/util/Comparator;

    return-void
.end method

.method private static getIcu4jCollator(Ljava/lang/String;I)Ljava/util/Comparator;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.ibm.icu.text.Collator"

    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/Locale;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    new-instance v4, Ljava/util/Locale;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-direct {v4, v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    check-cast v4, Ljava/util/Comparator;

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    const/16 v4, 0x5f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v7, v4, v0

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_3

    const-string v5, "getAvailableLocales"

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/util/Locale;

    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    invoke-static {v9, p0}, Lorg/h2/value/CompareMode;->compareLocaleNames(Ljava/util/Locale;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v9, v4, v0

    invoke-virtual {v3, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Comparator;

    goto :goto_3

    :cond_2
    add-int/2addr v8, v1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    const-string p0, "setStrength"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_4
    const-string p1, "collator"

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public compareString(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lorg/h2/value/CompareModeIcu4J;->collator:Ljava/util/Comparator;

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equalsChars(Ljava/lang/String;ILjava/lang/String;IZ)Z
    .locals 1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p4, 0x1

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lorg/h2/value/CompareModeIcu4J;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
