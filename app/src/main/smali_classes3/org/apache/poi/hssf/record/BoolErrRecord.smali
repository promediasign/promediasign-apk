.class public final Lorg/apache/poi/hssf/record/BoolErrRecord;
.super Lorg/apache/poi/hssf/record/CellRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x205s


# instance fields
.field private _isError:Z

.field private _value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/CellRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/CellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ") for BOOLERR record."

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected size ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/apache/poi/util/RecordFormatException;

    const-string v1, "Unexpected isError flag ("

    .line 2
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public appendValueText(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  .boolVal = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "  .errCode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->getErrorValue()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/util/HexDump;->byteToHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/BoolErrRecord;->clone()Lorg/apache/poi/hssf/record/BoolErrRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/BoolErrRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/BoolErrRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/BoolErrRecord;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/CellRecord;->copyBaseFields(Lorg/apache/poi/hssf/record/CellRecord;)V

    iget v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    iput v1, v0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    iget-boolean v1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    iput-boolean v1, v0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getErrorValue()B
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    int-to-byte v0, v0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "BOOLERR"

    return-object v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x205

    return v0
.end method

.method public getValueDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return v0
.end method

.method public serializeValue(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    return-void
.end method

.method public setValue(B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/BoolErrRecord;->setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    return-void
.end method

.method public setValue(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/poi/hssf/record/BoolErrRecord$1;->$SwitchMap$org$apache$poi$ss$usermodel$FormulaError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error Value can only be 0,7,15,23,29,36 or 42. It cannot be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Z)V
    .locals 0

    .line 3
    iput p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_value:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hssf/record/BoolErrRecord;->_isError:Z

    return-void
.end method
