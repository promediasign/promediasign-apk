.class public Lorg/h2/value/ValueEnum;
.super Lorg/h2/value/ValueEnumBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/value/ValueEnum$Validation;
    }
.end annotation


# instance fields
.field private final enumerators:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;I)V
    .locals 1

    aget-object v0, p1, p2

    invoke-direct {p0, v0, p2}, Lorg/h2/value/ValueEnumBase;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    return-void
.end method

.method public static final check([Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/h2/value/ValueEnum$1;->$SwitchMap$org$h2$value$ValueEnum$Validation:[I

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x15f98

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_0
    const/16 v0, 0x5611

    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0x5610

    invoke-static {p0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    return-void
.end method

.method private static final check([Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 2

    .line 2
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->check([Ljava/lang/String;)V

    sget-object v0, Lorg/h2/value/ValueEnum$1;->$SwitchMap$org$h2$value$ValueEnum$Validation:[I

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x560f

    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;
    .locals 2

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->check([Ljava/lang/String;Lorg/h2/value/Value;)V

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/h2/value/ValueEnum;

    invoke-direct {p1, p0, v0}, Lorg/h2/value/ValueEnum;-><init>([Ljava/lang/String;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const p0, 0xc350

    const-string p1, "Unexpected error"

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance v0, Lorg/h2/value/ValueEnum;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/h2/value/ValueEnum;-><init>([Ljava/lang/String;I)V

    return-object v0
.end method

.method public static isValid([Ljava/lang/String;Lorg/h2/value/Value;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object p0

    sget-object p1, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static sanitize([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "\'"

    .line 8
    .line 9
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    aget-object v3, p0, v1

    .line 14
    .line 15
    invoke-static {v3, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v2, p0

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 21
    .line 22
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    invoke-static {v0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string p0, ")"

    .line 34
    .line 35
    invoke-static {v0, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method private static validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->sanitize([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v0

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->DUPLICATE:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->EMPTY:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_5
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_6
    :goto_3
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->EMPTY:Lorg/h2/value/ValueEnum$Validation;

    return-object p0
.end method

.method private static validate([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum$Validation;
    .locals 3

    .line 2
    invoke-static {p0}, Lorg/h2/value/ValueEnum;->validate([Ljava/lang/String;)Lorg/h2/value/ValueEnum$Validation;

    move-result-object v0

    sget-object v1, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/DataType;->isStringType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/h2/value/ValueEnum;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->VALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->INVALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    if-ltz p1, :cond_5

    array-length p0, p0

    if-lt p1, p0, :cond_4

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    sget-object p0, Lorg/h2/value/ValueEnum$Validation;->INVALID:Lorg/h2/value/ValueEnum$Validation;

    return-object p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 0

    iget-object p2, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/h2/value/ValueEnum;->get([Ljava/lang/String;Lorg/h2/value/Value;)Lorg/h2/value/ValueEnum;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/value/ValueEnumBase;->getInt()I

    move-result p1

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1
.end method

.method public getEnumerators()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueEnum;->enumerators:[Ljava/lang/String;

    return-object v0
.end method
