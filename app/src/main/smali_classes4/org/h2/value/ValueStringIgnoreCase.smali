.class public Lorg/h2/value/ValueStringIgnoreCase;
.super Lorg/h2/value/ValueString;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lorg/h2/value/ValueStringIgnoreCase;


# instance fields
.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/h2/value/ValueStringIgnoreCase;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/h2/value/ValueStringIgnoreCase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/h2/value/ValueStringIgnoreCase;->EMPTY:Lorg/h2/value/ValueStringIgnoreCase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/value/ValueString;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/h2/value/ValueStringIgnoreCase;->EMPTY:Lorg/h2/value/ValueStringIgnoreCase;

    return-object p0

    :cond_0
    new-instance v0, Lorg/h2/value/ValueStringIgnoreCase;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->cache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/h2/value/ValueStringIgnoreCase;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    if-le v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {v0}, Lorg/h2/value/Value;->cache(Lorg/h2/value/Value;)Lorg/h2/value/Value;

    move-result-object v1

    check-cast v1, Lorg/h2/value/ValueStringIgnoreCase;

    iget-object v2, v1, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 2

    check-cast p1, Lorg/h2/value/ValueStringIgnoreCase;

    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    iget-object p1, p1, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Lorg/h2/value/CompareMode;->compareString(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    check-cast p1, Lorg/h2/value/ValueString;

    iget-object p1, p1, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getNew(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/value/ValueStringIgnoreCase;->getNew(Ljava/lang/String;)Lorg/h2/value/ValueString;

    move-result-object p1

    return-object p1
.end method

.method public getNew(Ljava/lang/String;)Lorg/h2/value/ValueString;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/h2/value/ValueStringIgnoreCase;->get(Ljava/lang/String;)Lorg/h2/value/ValueStringIgnoreCase;

    move-result-object p1

    return-object p1
.end method

.method public getSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CAST("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS VARCHAR_IGNORECASE)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueStringIgnoreCase;->hash:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueString;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/h2/value/ValueStringIgnoreCase;->hash:I

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueStringIgnoreCase;->hash:I

    return v0
.end method
