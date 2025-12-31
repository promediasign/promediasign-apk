.class public Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESIGN_RUSSIAN_DOLL:I = 0x1

.field public static final DESIGN_SALAMI_SLICE:I = 0x2

.field public static final DESIGN_VENETIAN_BLIND:I = 0x3

.field public static final ENUMERATION_NEVER:I = 0x1

.field public static final ENUMERATION_NOT_MORE_THAN_DEFAULT:I = 0xa

.field public static final SIMPLE_CONTENT_TYPES_SMART:I = 0x1

.field public static final SIMPLE_CONTENT_TYPES_STRING:I = 0x2


# instance fields
.field private _design:I

.field private _enumerations:I

.field private _simpleContentTypes:I

.field private _verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_design:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_simpleContentTypes:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_enumerations:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_verbose:Z

    return-void
.end method


# virtual methods
.method public getDesign()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_design:I

    return v0
.end method

.method public getSimpleContentTypes()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_simpleContentTypes:I

    return v0
.end method

.method public getUseEnumerations()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_enumerations:I

    return v0
.end method

.method public isUseEnumerations()Z
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_enumerations:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_verbose:Z

    return v0
.end method

.method public setDesign(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown value for design type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_design:I

    return-void
.end method

.method public setSimpleContentTypes(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown value for simpleContentTypes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_simpleContentTypes:I

    return-void
.end method

.method public setUseEnumerations(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_enumerations:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UseEnumerations must be set to a value bigger than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVerbose(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/inst2xsd/Inst2XsdOptions;->_verbose:Z

    return-void
.end method
