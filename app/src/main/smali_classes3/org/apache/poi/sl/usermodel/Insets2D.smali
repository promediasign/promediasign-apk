.class public final Lorg/apache/poi/sl/usermodel/Insets2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/usermodel/Insets2D;->clone()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/sl/usermodel/Insets2D;

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 12

    iget-wide v0, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide v6, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v8

    mul-double v10, v10, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v2

    add-double/2addr v10, v0

    add-double v0, v4, v8

    mul-double v0, v0, v4

    div-double/2addr v0, v2

    add-double/2addr v0, v6

    add-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double v8, v8, v10

    div-double/2addr v8, v2

    add-double/2addr v8, v0

    double-to-int v0, v8

    return v0
.end method

.method public set(DDDD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lorg/apache/poi/sl/usermodel/Insets2D;

    .line 7
    .line 8
    const-string v2, "[top="

    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ",left="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ",bottom="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ",right="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "]"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
