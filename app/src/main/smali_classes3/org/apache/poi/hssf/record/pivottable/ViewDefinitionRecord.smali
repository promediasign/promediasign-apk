.class public final Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0xb0s


# instance fields
.field private cCol:I

.field private cDim:I

.field private cDimCol:I

.field private cDimData:I

.field private cDimPg:I

.field private cDimRw:I

.field private cRw:I

.field private colFirst:I

.field private colFirstData:I

.field private colLast:I

.field private dataField:Ljava/lang/String;

.field private grbit:I

.field private iCache:I

.field private ipos4Data:I

.field private itblAutoFmt:I

.field private name:Ljava/lang/String;

.field private reserved:I

.field private rwFirst:I

.field private rwFirstData:I

.field private rwFirstHead:I

.field private rwLast:I

.field private sxaxis4Data:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeString(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/poi/util/StringUtil;->getEncodedSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0xb0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->writeUnicodeStringFlagAndData(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[SXVIEW]\n    .rwFirst      ="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirst:I

    .line 9
    .line 10
    const-string v2, "\n    .rwLast       ="

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwLast:I

    .line 16
    .line 17
    const-string v2, "\n    .colFirst     ="

    .line 18
    .line 19
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirst:I

    .line 23
    .line 24
    const-string v2, "\n    .colLast      ="

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colLast:I

    .line 30
    .line 31
    const-string v2, "\n    .rwFirstHead  ="

    .line 32
    .line 33
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstHead:I

    .line 37
    .line 38
    const-string v2, "\n    .rwFirstData  ="

    .line 39
    .line 40
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->rwFirstData:I

    .line 44
    .line 45
    const-string v2, "\n    .colFirstData ="

    .line 46
    .line 47
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->colFirstData:I

    .line 51
    .line 52
    const-string v2, "\n    .iCache       ="

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->iCache:I

    .line 58
    .line 59
    const-string v2, "\n    .reserved     ="

    .line 60
    .line 61
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->reserved:I

    .line 65
    .line 66
    const-string v2, "\n    .sxaxis4Data  ="

    .line 67
    .line 68
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->sxaxis4Data:I

    .line 72
    .line 73
    const-string v2, "\n    .ipos4Data    ="

    .line 74
    .line 75
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->ipos4Data:I

    .line 79
    .line 80
    const-string v2, "\n    .cDim         ="

    .line 81
    .line 82
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDim:I

    .line 86
    .line 87
    const-string v2, "\n    .cDimRw       ="

    .line 88
    .line 89
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimRw:I

    .line 93
    .line 94
    const-string v2, "\n    .cDimCol      ="

    .line 95
    .line 96
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimCol:I

    .line 100
    .line 101
    const-string v2, "\n    .cDimPg       ="

    .line 102
    .line 103
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimPg:I

    .line 107
    .line 108
    const-string v2, "\n    .cDimData     ="

    .line 109
    .line 110
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cDimData:I

    .line 114
    .line 115
    const-string v2, "\n    .cRw          ="

    .line 116
    .line 117
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cRw:I

    .line 121
    .line 122
    const-string v2, "\n    .cCol         ="

    .line 123
    .line 124
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->cCol:I

    .line 128
    .line 129
    const-string v2, "\n    .grbit        ="

    .line 130
    .line 131
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->grbit:I

    .line 135
    .line 136
    const-string v2, "\n    .itblAutoFmt  ="

    .line 137
    .line 138
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->itblAutoFmt:I

    .line 142
    .line 143
    const-string v2, "\n    .name         ="

    .line 144
    .line 145
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->x(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->name:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    .line 152
    .line 153
    const-string v1, "\n    .dataField    ="

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lorg/apache/poi/hssf/record/pivottable/ViewDefinitionRecord;->dataField:Ljava/lang/String;

    .line 159
    .line 160
    const-string v2, "\n[/SXVIEW]\n"

    .line 161
    .line 162
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method
