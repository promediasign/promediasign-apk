.class public Lorg/apache/poi/xwpf/usermodel/TOC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock$Factory;->newInstance()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/xwpf/usermodel/TOC;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V

    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->addNewId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "4844945"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDecimalNumber;->setVal(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;->addNewDocPartObj()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDocPart;->addNewDocPartGallery()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    const-string v1, "Table of contents"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtEndPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtEndPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_H_ANSI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAsciiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsiaTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsiTheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme;->MINOR_BIDI:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCstheme(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTheme$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->OFF:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewBCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v1

    const-string v2, "auto"

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->setVal(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "24"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->addNewSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v1, "00EF7E24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidR([B)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v0

    const-string v1, "TOCHeading"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    const-string v0, "Table of Contents"

    invoke-interface {p1, v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRow(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentBlock;->addNewP()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    const-string v2, "00EF7E24"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidR([B)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->setRsidRDefault([B)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewPPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewPStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TOC"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;->setVal(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPrBase;->addNewTabs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabs;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;

    move-result-object p1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc;->RIGHT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabJc$Enum;)V

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc;->DOT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setLeader(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTabTlc$Enum;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "8290"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTabStop;->setPos(Ljava/math/BigInteger;)V

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPPr;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTParaRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewInstrText()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    sget-object p2, Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;->PRESERVE:Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setSpace(Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, " PAGEREF _Toc"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " \\h "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->SEPARATE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTP;->addNewR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object p2

    invoke-interface {p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewNoProof()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewFldChar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    move-result-object p1

    sget-object p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->END:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->setFldCharType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;)V

    return-void
.end method

.method public getBlock()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/TOC;->block:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtBlock;

    return-object v0
.end method
