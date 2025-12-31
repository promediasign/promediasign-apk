.class public final Lorg/apache/poi/ss/formula/ptg/StringPtg;
.super Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;
.source "SourceFile"


# static fields
.field public static final sid:B = 0x17t


# instance fields
.field private final _is16bitUnicode:Z

.field private final field_3_string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->_is16bitUnicode:Z

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "String literals in formulas can\'t be bigger than 255 characters ASCII"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ScalarConstantPtg;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUByte()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->_is16bitUnicode:Z

    if-eqz v2, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v1, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->_is16bitUnicode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    return-object v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x17

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->_is16bitUnicode:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->_is16bitUnicode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/StringPtg;->field_3_string:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    :goto_0
    return-void
.end method
