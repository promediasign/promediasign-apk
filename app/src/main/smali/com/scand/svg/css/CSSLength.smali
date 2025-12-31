.class public Lcom/scand/svg/css/CSSLength;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# instance fields
.field unit:Ljava/lang/String;

.field value:D


# direct methods
.method public constructor <init>(DLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    iput-wide p1, p0, Lcom/scand/svg/css/CSSLength;->value:D

    iput-object p3, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/scand/svg/css/CSSLength;

    iget-wide v0, p1, Lcom/scand/svg/css/CSSLength;->value:D

    iget-wide v3, p0, Lcom/scand/svg/css/CSSLength;->value:D

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    iget-object p1, p1, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    iget-object v0, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/scand/svg/css/CSSLength;->value:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 6

    iget-wide v0, p0, Lcom/scand/svg/css/CSSLength;->value:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(D)V

    :goto_0
    iget-object v0, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/scand/svg/css/CSSLength;->value:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/scand/svg/css/CSSLength;->unit:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
