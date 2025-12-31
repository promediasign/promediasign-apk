.class public final Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;
.super Lorg/apache/poi/hssf/record/PageBreakRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1bs


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PageBreakRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;->clone()Lorg/apache/poi/hssf/record/PageBreakRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/PageBreakRecord;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HorizontalPageBreakRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PageBreakRecord;->getBreaksIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;

    iget v3, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->main:I

    iget v4, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subFrom:I

    iget v2, v2, Lorg/apache/poi/hssf/record/PageBreakRecord$Break;->subTo:I

    invoke-virtual {v0, v3, v4, v2}, Lorg/apache/poi/hssf/record/PageBreakRecord;->addBreak(III)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1b

    return v0
.end method
