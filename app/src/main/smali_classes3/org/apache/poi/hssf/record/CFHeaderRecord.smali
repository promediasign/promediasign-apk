.class public final Lorg/apache/poi/hssf/record/CFHeaderRecord;
.super Lorg/apache/poi/hssf/record/CFHeaderBase;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1b0s


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->createEmpty()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/CFHeaderBase;->read(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/record/CFHeaderBase;-><init>([Lorg/apache/poi/ss/util/CellRangeAddress;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/hssf/record/CFHeaderBase;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;->clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/CFHeaderRecord;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/poi/hssf/record/CFHeaderRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/CFHeaderRecord;-><init>()V

    invoke-super {p0, v0}, Lorg/apache/poi/hssf/record/CFHeaderBase;->copyTo(Lorg/apache/poi/hssf/record/CFHeaderBase;)V

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "CFHEADER"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1b0

    return v0
.end method
