.class public Lcom/scand/svg/css/CSSFunction;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# instance fields
.field private final ident:Ljava/lang/String;

.field private final params:[Lcom/scand/svg/css/CSSValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/scand/svg/css/CSSValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/CSSFunction;->ident:Ljava/lang/String;

    iput-object p2, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    check-cast p1, Lcom/scand/svg/css/CSSFunction;

    iget-object v1, p1, Lcom/scand/svg/css/CSSFunction;->ident:Ljava/lang/String;

    iget-object v2, p0, Lcom/scand/svg/css/CSSFunction;->ident:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    array-length v1, v1

    iget-object v2, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    array-length v2, v2

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v2, v2, v1

    iget-object v4, p1, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v3
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/scand/svg/css/CSSFunction;->ident:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/scand/svg/css/CSSFunction;->ident:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/scand/svg/css/CSSFunction;->params:[Lcom/scand/svg/css/CSSValue;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/scand/svg/css/CSSValue;->serialize(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    const-string v0, ", "

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method
