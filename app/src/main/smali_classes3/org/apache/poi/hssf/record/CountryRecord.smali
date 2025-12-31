.class public final Lorg/apache/poi/hssf/record/CountryRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x8cs


# instance fields
.field private field_1_default_country:S

.field private field_2_current_country:S


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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    return-void
.end method


# virtual methods
.method public getCurrentCountry()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getDefaultCountry()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x8c

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getDefaultCountry()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getCurrentCountry()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCurrentCountry(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_2_current_country:S

    return-void
.end method

.method public setDefaultCountry(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/CountryRecord;->field_1_default_country:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[COUNTRY]\n    .defaultcountry  = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getDefaultCountry()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n    .currentcountry  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/CountryRecord;->getCurrentCountry()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/COUNTRY]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
