.class public final Lorg/apache/poi/hssf/record/PaneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ACTIVE_PANE_LOWER_LEFT:S = 0x2s

.field public static final ACTIVE_PANE_LOWER_RIGHT:S = 0x0s

.field public static final ACTIVE_PANE_UPPER_LEFT:S = 0x3s

.field public static final ACTIVE_PANE_UPPER_RIGHT:S = 0x1s

.field public static final sid:S = 0x41s


# instance fields
.field private field_1_x:S

.field private field_2_y:S

.field private field_3_topRow:S

.field private field_4_leftColumn:S

.field private field_5_activePane:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/record/PaneRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/PaneRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-object v0
.end method

.method public getActivePane()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getLeftColumn()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public getTopRow()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    return v0
.end method

.method public getX()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    return v0
.end method

.method public getY()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setActivePane(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_5_activePane:S

    return-void
.end method

.method public setLeftColumn(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_4_leftColumn:S

    return-void
.end method

.method public setTopRow(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_3_topRow:S

    return-void
.end method

.method public setX(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_1_x:S

    return-void
.end method

.method public setY(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/PaneRecord;->field_2_y:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[PANE]\n    .x                    = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getX()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .y                    = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getY()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .topRow               = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getTopRow()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .leftColumn           = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getLeftColumn()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .activePane           = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/PaneRecord;->getActivePane()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/PANE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
