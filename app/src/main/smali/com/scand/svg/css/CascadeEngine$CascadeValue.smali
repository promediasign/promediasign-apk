.class Lcom/scand/svg/css/CascadeEngine$CascadeValue;
.super Lcom/scand/svg/css/CSSValue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scand/svg/css/CascadeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CascadeValue"
.end annotation


# instance fields
.field importance:I

.field order:I

.field specificity:I

.field value:Lcom/scand/svg/css/CSSValue;


# direct methods
.method public constructor <init>(Lcom/scand/svg/css/CSSValue;III)V
    .locals 0

    invoke-direct {p0}, Lcom/scand/svg/css/CSSValue;-><init>()V

    iput-object p1, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->value:Lcom/scand/svg/css/CSSValue;

    iput p2, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->specificity:I

    iput p3, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->importance:I

    iput p4, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->order:I

    return-void
.end method


# virtual methods
.method public compareSpecificity(Lcom/scand/svg/css/CascadeEngine$CascadeValue;)I
    .locals 2

    iget v0, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->specificity:I

    iget v1, p1, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->specificity:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->importance:I

    iget v1, p1, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->importance:I

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->order:I

    iget p1, p1, Lcom/scand/svg/css/CascadeEngine$CascadeValue;->order:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public serialize(Ljava/io/PrintWriter;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected call"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
