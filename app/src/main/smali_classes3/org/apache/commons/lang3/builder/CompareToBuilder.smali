.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method


# virtual methods
.method public append(JJ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang3/builder/CompareToBuilder;
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public toComparison()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
