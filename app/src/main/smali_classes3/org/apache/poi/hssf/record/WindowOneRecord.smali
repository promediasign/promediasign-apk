.class public final Lorg/apache/poi/hssf/record/WindowOneRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field private static final hidden:Lorg/apache/poi/util/BitField;

.field private static final hscroll:Lorg/apache/poi/util/BitField;

.field private static final iconic:Lorg/apache/poi/util/BitField;

.field private static final reserved:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x3ds

.field private static final tabs:Lorg/apache/poi/util/BitField;

.field private static final vscroll:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_h_hold:S

.field private field_2_v_hold:S

.field private field_3_width:S

.field private field_4_height:S

.field private field_5_options:S

.field private field_6_active_sheet:I

.field private field_7_first_visible_tab:I

.field private field_8_num_selected_tabs:S

.field private field_9_tab_width_ratio:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->reserved:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    return-void
.end method

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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method


# virtual methods
.method public getActiveSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getDisplayHorizontalScrollbar()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayTabs()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDisplayVerticalScrollbar()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getFirstVisibleTab()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return v0
.end method

.method public getHeight()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return v0
.end method

.method public getHidden()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getHorizontalHold()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return v0
.end method

.method public getIconic()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getNumSelectedTabs()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public getTabWidthRatio()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return v0
.end method

.method public getVerticalHold()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return v0
.end method

.method public getWidth()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setActiveSheetIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_6_active_sheet:I

    return-void
.end method

.method public setDisplayHorizonalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayTabs(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->tabs:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setDisplayVerticalScrollbar(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->vscroll:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setFirstVisibleTab(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_7_first_visible_tab:I

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_4_height:S

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setHorizontalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_1_h_hold:S

    return-void
.end method

.method public setIconic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/WindowOneRecord;->iconic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setNumSelectedTabs(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_8_num_selected_tabs:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_5_options:S

    return-void
.end method

.method public setTabWidthRatio(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_9_tab_width_ratio:S

    return-void
.end method

.method public setVerticalHold(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_2_v_hold:S

    return-void
.end method

.method public setWidth(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/WindowOneRecord;->field_3_width:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[WINDOW1]\n    .h_hold          = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHorizontalHold()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .v_hold          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getVerticalHold()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .width           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getWidth()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .height          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHeight()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .options         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getOptions()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        .hidden      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n        .iconic      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getIconic()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n        .hscroll     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayHorizontalScrollbar()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n        .vscroll     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayVerticalScrollbar()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n        .tabs        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getDisplayTabs()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    .activeSheet     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getActiveSheetIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .firstVisibleTab    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getFirstVisibleTab()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .numselectedtabs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getNumSelectedTabs()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    .tabwidthratio   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/WindowOneRecord;->getTabWidthRatio()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n[/WINDOW1]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
