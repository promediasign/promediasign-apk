.class public final Lorg/apache/poi/hssf/record/cf/BorderFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final BORDER_DASHED:S = 0x3s

.field public static final BORDER_DASH_DOT:S = 0x9s

.field public static final BORDER_DASH_DOT_DOT:S = 0xbs

.field public static final BORDER_DOTTED:S = 0x7s

.field public static final BORDER_DOUBLE:S = 0x6s

.field public static final BORDER_HAIR:S = 0x4s

.field public static final BORDER_MEDIUM:S = 0x2s

.field public static final BORDER_MEDIUM_DASHED:S = 0x8s

.field public static final BORDER_MEDIUM_DASH_DOT:S = 0xas

.field public static final BORDER_MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final BORDER_NONE:S = 0x0s

.field public static final BORDER_SLANTED_DASH_DOT:S = 0xds

.field public static final BORDER_THICK:S = 0x5s

.field public static final BORDER_THIN:S = 0x1s

.field private static final bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordBottomLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordDiagLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordLeftLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordRightLineStyle:Lorg/apache/poi/util/BitField;

.field private static final bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineColor:Lorg/apache/poi/util/BitField;

.field private static final bordTopLineStyle:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_13_border_styles1:I

.field private field_14_border_styles2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x7f0000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x3f80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    const v0, 0x1fc000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    const/high16 v0, 0x1e00000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->clone()Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/cf/BorderFormatting;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-object v0
.end method

.method public getBorderBottom()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderDiagonal()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderLeft()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderRight()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBorderTop()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getBottomBorderColor()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getDataLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDiagonalBorderColor()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getLeftBorderColor()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getRightBorderColor()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getTopBorderColor()I
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result v0

    return v0
.end method

.method public isBackwardDiagonalOn()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isForwardDiagonalOn()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(I[B)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/16 p1, 0x8

    return p1
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    .line 2
    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setBackwardDiagonalOn(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTlBrLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderBottom(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderDiagonal(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setBorderLeft(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderRight(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBorderTop(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineStyle:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setBottomBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBottomLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setDiagonalBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordDiagLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public setForwardDiagonalOn(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordBlTrtLineOnOff:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setLeftBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordLeftLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setRightBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordRightLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_13_border_styles1:I

    return-void
.end method

.method public setTopBorderColor(I)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->bordTopLineColor:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->field_14_border_styles2:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "    [Border Formatting]\n          .lftln     = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderLeft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .rgtln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderRight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .topln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderTop()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .btmln     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBorderBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .leftborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getLeftBorderColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .rghtborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getRightBorderColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .topborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getTopBorderColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .bottomborder= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->getBottomBorderColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n          .fwdiag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isForwardDiagonalOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n          .bwdiag= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/BorderFormatting;->isBackwardDiagonalOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n    [/Border Formatting]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
