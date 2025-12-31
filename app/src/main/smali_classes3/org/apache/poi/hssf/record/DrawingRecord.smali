.class public final Lorg/apache/poi/hssf/record/DrawingRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field public static final sid:S = 0xecs


# instance fields
.field private contd:[B

.field private recordData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/DrawingRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/hssf/record/DrawingRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DrawingRecord;->clone()Lorg/apache/poi/hssf/record/DrawingRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/DrawingRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/DrawingRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/DrawingRecord;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->contd:[B

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/DrawingRecord;->contd:[B

    :cond_0
    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    array-length v0, v0

    return v0
.end method

.method public getRecordData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xec

    return v0
.end method

.method public processContinueRecord([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->contd:[B

    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    return-void
.end method

.method public setData([B)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "data must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DrawingRecord["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DrawingRecord;->recordData:[B

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    const-string v2, "]"

    .line 12
    .line 13
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
