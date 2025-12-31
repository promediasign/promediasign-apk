.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctshareditems677atype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSharedItems;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewB()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract addNewD()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract addNewE()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract addNewM()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract addNewS()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getBArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract getBArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract getBList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainsBlank()Z
.end method

.method public abstract getContainsDate()Z
.end method

.method public abstract getContainsInteger()Z
.end method

.method public abstract getContainsMixedTypes()Z
.end method

.method public abstract getContainsNonDate()Z
.end method

.method public abstract getContainsNumber()Z
.end method

.method public abstract getContainsSemiMixedTypes()Z
.end method

.method public abstract getContainsString()Z
.end method

.method public abstract getCount()J
.end method

.method public abstract getDArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract getDArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract getDList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongText()Z
.end method

.method public abstract getMArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDate()Ljava/util/Calendar;
.end method

.method public abstract getMaxValue()D
.end method

.method public abstract getMinDate()Ljava/util/Calendar;
.end method

.method public abstract getMinValue()D
.end method

.method public abstract getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewB(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;
.end method

.method public abstract insertNewD(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;
.end method

.method public abstract insertNewE(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract insertNewM(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract insertNewS(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract isSetContainsBlank()Z
.end method

.method public abstract isSetContainsDate()Z
.end method

.method public abstract isSetContainsInteger()Z
.end method

.method public abstract isSetContainsMixedTypes()Z
.end method

.method public abstract isSetContainsNonDate()Z
.end method

.method public abstract isSetContainsNumber()Z
.end method

.method public abstract isSetContainsSemiMixedTypes()Z
.end method

.method public abstract isSetContainsString()Z
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetLongText()Z
.end method

.method public abstract isSetMaxDate()Z
.end method

.method public abstract isSetMaxValue()Z
.end method

.method public abstract isSetMinDate()Z
.end method

.method public abstract isSetMinValue()Z
.end method

.method public abstract removeB(I)V
.end method

.method public abstract removeD(I)V
.end method

.method public abstract removeE(I)V
.end method

.method public abstract removeM(I)V
.end method

.method public abstract removeN(I)V
.end method

.method public abstract removeS(I)V
.end method

.method public abstract setBArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
.end method

.method public abstract setBArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBoolean;)V
.end method

.method public abstract setContainsBlank(Z)V
.end method

.method public abstract setContainsDate(Z)V
.end method

.method public abstract setContainsInteger(Z)V
.end method

.method public abstract setContainsMixedTypes(Z)V
.end method

.method public abstract setContainsNonDate(Z)V
.end method

.method public abstract setContainsNumber(Z)V
.end method

.method public abstract setContainsSemiMixedTypes(Z)V
.end method

.method public abstract setContainsString(Z)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setDArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
.end method

.method public abstract setDArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateTime;)V
.end method

.method public abstract setEArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setEArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setLongText(Z)V
.end method

.method public abstract setMArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setMArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setMaxDate(Ljava/util/Calendar;)V
.end method

.method public abstract setMaxValue(D)V
.end method

.method public abstract setMinDate(Ljava/util/Calendar;)V
.end method

.method public abstract setMinValue(D)V
.end method

.method public abstract setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract setSArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract setSArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfBArray()I
.end method

.method public abstract sizeOfDArray()I
.end method

.method public abstract sizeOfEArray()I
.end method

.method public abstract sizeOfMArray()I
.end method

.method public abstract sizeOfNArray()I
.end method

.method public abstract sizeOfSArray()I
.end method

.method public abstract unsetContainsBlank()V
.end method

.method public abstract unsetContainsDate()V
.end method

.method public abstract unsetContainsInteger()V
.end method

.method public abstract unsetContainsMixedTypes()V
.end method

.method public abstract unsetContainsNonDate()V
.end method

.method public abstract unsetContainsNumber()V
.end method

.method public abstract unsetContainsSemiMixedTypes()V
.end method

.method public abstract unsetContainsString()V
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetLongText()V
.end method

.method public abstract unsetMaxDate()V
.end method

.method public abstract unsetMaxValue()V
.end method

.method public abstract unsetMinDate()V
.end method

.method public abstract unsetMinValue()V
.end method

.method public abstract xgetContainsBlank()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsDate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsInteger()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsMixedTypes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsNonDate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsNumber()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsSemiMixedTypes()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetContainsString()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLongText()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMaxDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetMaxValue()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetMinDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetMinValue()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetContainsBlank(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsDate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsInteger(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsMixedTypes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsNonDate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsNumber(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsSemiMixedTypes(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetContainsString(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLongText(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMaxDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetMaxValue(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetMinDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetMinValue(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
