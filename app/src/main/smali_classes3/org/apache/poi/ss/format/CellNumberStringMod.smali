.class public Lorg/apache/poi/ss/format/CellNumberStringMod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/format/CellNumberStringMod;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final AFTER:I = 0x2

.field public static final BEFORE:I = 0x1

.field public static final REPLACE:I = 0x3


# instance fields
.field private end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private endInclusive:Z

.field private final op:I

.field private final special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

.field private startInclusive:Z

.field private toAdd:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-object p2, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-boolean p2, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->startInclusive:Z

    iput-object p3, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iput-boolean p4, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->endInclusive:Z

    const/4 p1, 0x3

    iput p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    const-string p1, ""

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;ZC)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/format/CellNumberStringMod;-><init>(Lorg/apache/poi/ss/format/CellNumberFormatter$Special;ZLorg/apache/poi/ss/format/CellNumberFormatter$Special;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellNumberStringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v0, v0, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    iget-object v1, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    iget v1, v1, Lorg/apache/poi/ss/format/CellNumberFormatter$Special;->pos:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    iget p1, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/ss/format/CellNumberStringMod;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/format/CellNumberStringMod;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/format/CellNumberStringMod;->compareTo(Lorg/apache/poi/ss/format/CellNumberStringMod;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEnd()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->end:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getOp()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    return v0
.end method

.method public getSpecial()Lorg/apache/poi/ss/format/CellNumberFormatter$Special;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    return-object v0
.end method

.method public getToAdd()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->toAdd:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->special:Lorg/apache/poi/ss/format/CellNumberFormatter$Special;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->op:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isEndInclusive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->endInclusive:Z

    return v0
.end method

.method public isStartInclusive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/format/CellNumberStringMod;->startInclusive:Z

    return v0
.end method
