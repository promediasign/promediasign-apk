.class public Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;
.super Lorg/apache/poi/POIXMLDocumentPart;
.source "SourceFile"


# instance fields
.field protected _document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/xdgf/usermodel/XDGFDocument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/POIXMLDocumentPart;-><init>(Lorg/apache/poi/openxml4j/opc/PackagePart;)V

    iput-object p2, p0, Lorg/apache/poi/xdgf/xml/XDGFXMLDocumentPart;->_document:Lorg/apache/poi/xdgf/usermodel/XDGFDocument;

    return-void
.end method
