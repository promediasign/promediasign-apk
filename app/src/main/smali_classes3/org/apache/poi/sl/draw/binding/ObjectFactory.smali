.class public Lorg/apache/poi/sl/draw/binding/ObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/xml/bind/annotation/XmlRegistry;
.end annotation


# static fields
.field private static final _CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

.field private static final _CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "alpha"

    const-string v2, "http://schemas.openxmlformats.org/drawingml/2006/main"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "lum"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "gamma"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "invGamma"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "redOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "alphaMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "alphaOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "greenOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "redMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "hue"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "satOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "greenMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "sat"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "blue"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "red"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "satMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "hueOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "blueMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "shade"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "lumMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "inv"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "lumOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "tint"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "green"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "comp"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "blueOff"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "hueMod"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    new-instance v0, Lorg/apache/poi/javax/xml/namespace/QName;

    const-string v1, "gray"

    invoke-direct {v0, v2, v1}, Lorg/apache/poi/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCTAdjPoint2D()Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTAdjPoint2D;-><init>()V

    return-object v0
.end method

.method public createCTAdjustHandleList()Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTAdjustHandleList;-><init>()V

    return-object v0
.end method

.method public createCTAngle()Lorg/apache/poi/sl/draw/binding/CTAngle;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTAngle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTAngle;-><init>()V

    return-object v0
.end method

.method public createCTColor()Lorg/apache/poi/sl/draw/binding/CTColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTColor;-><init>()V

    return-object v0
.end method

.method public createCTColorMRU()Lorg/apache/poi/sl/draw/binding/CTColorMRU;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTColorMRU;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTColorMRU;-><init>()V

    return-object v0
.end method

.method public createCTComplementTransform()Lorg/apache/poi/sl/draw/binding/CTComplementTransform;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;-><init>()V

    return-object v0
.end method

.method public createCTConnection()Lorg/apache/poi/sl/draw/binding/CTConnection;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTConnection;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTConnection;-><init>()V

    return-object v0
.end method

.method public createCTConnectionSite()Lorg/apache/poi/sl/draw/binding/CTConnectionSite;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTConnectionSite;-><init>()V

    return-object v0
.end method

.method public createCTConnectionSiteList()Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTConnectionSiteList;-><init>()V

    return-object v0
.end method

.method public createCTCustomGeometry2D()Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTCustomGeometry2D;-><init>()V

    return-object v0
.end method

.method public createCTEmbeddedWAVAudioFile()Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTEmbeddedWAVAudioFile;-><init>()V

    return-object v0
.end method

.method public createCTFixedPercentage()Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;-><init>()V

    return-object v0
.end method

.method public createCTGammaTransform()Lorg/apache/poi/sl/draw/binding/CTGammaTransform;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;-><init>()V

    return-object v0
.end method

.method public createCTGeomGuide()Lorg/apache/poi/sl/draw/binding/CTGeomGuide;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomGuide;-><init>()V

    return-object v0
.end method

.method public createCTGeomGuideList()Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomGuideList;-><init>()V

    return-object v0
.end method

.method public createCTGeomRect()Lorg/apache/poi/sl/draw/binding/CTGeomRect;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGeomRect;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGeomRect;-><init>()V

    return-object v0
.end method

.method public createCTGrayscaleTransform()Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;-><init>()V

    return-object v0
.end method

.method public createCTGroupTransform2D()Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTGroupTransform2D;-><init>()V

    return-object v0
.end method

.method public createCTHslColor()Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTHslColor;-><init>()V

    return-object v0
.end method

.method public createCTHslColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHslColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTHslColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTHslColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTHyperlink()Lorg/apache/poi/sl/draw/binding/CTHyperlink;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTHyperlink;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTHyperlink;-><init>()V

    return-object v0
.end method

.method public createCTInverseGammaTransform()Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;-><init>()V

    return-object v0
.end method

.method public createCTInverseTransform()Lorg/apache/poi/sl/draw/binding/CTInverseTransform;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;-><init>()V

    return-object v0
.end method

.method public createCTOfficeArtExtension()Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtension;-><init>()V

    return-object v0
.end method

.method public createCTOfficeArtExtensionList()Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTOfficeArtExtensionList;-><init>()V

    return-object v0
.end method

.method public createCTPath2D()Lorg/apache/poi/sl/draw/binding/CTPath2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2D;-><init>()V

    return-object v0
.end method

.method public createCTPath2DArcTo()Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DArcTo;-><init>()V

    return-object v0
.end method

.method public createCTPath2DClose()Lorg/apache/poi/sl/draw/binding/CTPath2DClose;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DClose;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DClose;-><init>()V

    return-object v0
.end method

.method public createCTPath2DCubicBezierTo()Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DCubicBezierTo;-><init>()V

    return-object v0
.end method

.method public createCTPath2DLineTo()Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DLineTo;-><init>()V

    return-object v0
.end method

.method public createCTPath2DList()Lorg/apache/poi/sl/draw/binding/CTPath2DList;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DList;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DList;-><init>()V

    return-object v0
.end method

.method public createCTPath2DMoveTo()Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DMoveTo;-><init>()V

    return-object v0
.end method

.method public createCTPath2DQuadBezierTo()Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPath2DQuadBezierTo;-><init>()V

    return-object v0
.end method

.method public createCTPercentage()Lorg/apache/poi/sl/draw/binding/CTPercentage;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPercentage;-><init>()V

    return-object v0
.end method

.method public createCTPoint2D()Lorg/apache/poi/sl/draw/binding/CTPoint2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPoint2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPoint2D;-><init>()V

    return-object v0
.end method

.method public createCTPoint3D()Lorg/apache/poi/sl/draw/binding/CTPoint3D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPoint3D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPoint3D;-><init>()V

    return-object v0
.end method

.method public createCTPolarAdjustHandle()Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPolarAdjustHandle;-><init>()V

    return-object v0
.end method

.method public createCTPositiveFixedAngle()Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;-><init>()V

    return-object v0
.end method

.method public createCTPositiveFixedPercentage()Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;-><init>()V

    return-object v0
.end method

.method public createCTPositivePercentage()Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;-><init>()V

    return-object v0
.end method

.method public createCTPositiveSize2D()Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPositiveSize2D;-><init>()V

    return-object v0
.end method

.method public createCTPresetColor()Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPresetColor;-><init>()V

    return-object v0
.end method

.method public createCTPresetColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTPresetColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTPresetColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTPresetGeometry2D()Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPresetGeometry2D;-><init>()V

    return-object v0
.end method

.method public createCTPresetTextShape()Lorg/apache/poi/sl/draw/binding/CTPresetTextShape;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTPresetTextShape;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTPresetTextShape;-><init>()V

    return-object v0
.end method

.method public createCTRatio()Lorg/apache/poi/sl/draw/binding/CTRatio;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTRatio;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTRatio;-><init>()V

    return-object v0
.end method

.method public createCTRelativeRect()Lorg/apache/poi/sl/draw/binding/CTRelativeRect;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTRelativeRect;-><init>()V

    return-object v0
.end method

.method public createCTSRgbColor()Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;-><init>()V

    return-object v0
.end method

.method public createCTSRgbColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSRgbColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColor()Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;-><init>()V

    return-object v0
.end method

.method public createCTScRgbColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScRgbColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTScRgbColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTScRgbColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTScale2D()Lorg/apache/poi/sl/draw/binding/CTScale2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTScale2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTScale2D;-><init>()V

    return-object v0
.end method

.method public createCTSchemeColor()Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;-><init>()V

    return-object v0
.end method

.method public createCTSchemeColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSchemeColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSchemeColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSchemeColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSphereCoords()Lorg/apache/poi/sl/draw/binding/CTSphereCoords;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTSphereCoords;-><init>()V

    return-object v0
.end method

.method public createCTSystemColor()Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTSystemColor;-><init>()V

    return-object v0
.end method

.method public createCTSystemColorAlpha(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alpha"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlpha_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorAlphaMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorAlphaOff(Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "alphaOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorAlphaOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorBlue(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorBlueMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorBlueOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "blueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorBlueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorComp(Lorg/apache/poi/sl/draw/binding/CTComplementTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTComplementTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "comp"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorComp_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTComplementTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorGamma(Lorg/apache/poi/sl/draw/binding/CTGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorGray(Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "gray"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGray_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTGrayscaleTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorGreen(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "green"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreen_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorGreenMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorGreenOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "greenOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorGreenOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorHue(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hue"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHue_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorHueMod(Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositivePercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorHueOff(Lorg/apache/poi/sl/draw/binding/CTAngle;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTAngle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "hueOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorHueOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTAngle;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorInv(Lorg/apache/poi/sl/draw/binding/CTInverseTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "inv"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInv_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorInvGamma(Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "invGamma"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorInvGamma_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTInverseGammaTransform;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorLum(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lum"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLum_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorLumMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorLumOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "lumOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorLumOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorRed(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "red"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRed_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorRedMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorRedOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "redOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorRedOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorSat(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "sat"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSat_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorSatMod(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satMod"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatMod_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorSatOff(Lorg/apache/poi/sl/draw/binding/CTPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "satOff"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorSatOff_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorShade(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "shade"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorShade_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTSystemColorTint(Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;)Ljavax/xml/bind/JAXBElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ")",
            "Ljavax/xml/bind/JAXBElement<",
            "Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/xml/bind/annotation/XmlElementDecl;
        name = "tint"
        namespace = "http://schemas.openxmlformats.org/drawingml/2006/main"
        scope = Lorg/apache/poi/sl/draw/binding/CTSystemColor;
    .end annotation

    new-instance v0, Ljavax/xml/bind/JAXBElement;

    sget-object v1, Lorg/apache/poi/sl/draw/binding/ObjectFactory;->_CTSRgbColorTint_QNAME:Lorg/apache/poi/javax/xml/namespace/QName;

    const-class v2, Lorg/apache/poi/sl/draw/binding/CTPositiveFixedPercentage;

    const-class v3, Lorg/apache/poi/sl/draw/binding/CTSystemColor;

    invoke-direct {v0, v1, v2, v3, p1}, Ljavax/xml/bind/JAXBElement;-><init>(Lorg/apache/poi/javax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createCTTransform2D()Lorg/apache/poi/sl/draw/binding/CTTransform2D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTTransform2D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTTransform2D;-><init>()V

    return-object v0
.end method

.method public createCTVector3D()Lorg/apache/poi/sl/draw/binding/CTVector3D;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTVector3D;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTVector3D;-><init>()V

    return-object v0
.end method

.method public createCTXYAdjustHandle()Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;
    .locals 1

    new-instance v0, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;

    invoke-direct {v0}, Lorg/apache/poi/sl/draw/binding/CTXYAdjustHandle;-><init>()V

    return-object v0
.end method
