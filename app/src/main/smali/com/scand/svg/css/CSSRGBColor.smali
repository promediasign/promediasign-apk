.class public Lcom/scand/svg/css/CSSRGBColor;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# instance fields
.field rgb:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    iput p1, p0, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "invalid parameter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/scand/svg/css/CSSRGBColor;

    iget p1, p1, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    iget v0, p0, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    const/high16 v1, 0x1000000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/scand/svg/css/CSSRGBColor;->rgb:I

    const/high16 v2, 0x1000000

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
