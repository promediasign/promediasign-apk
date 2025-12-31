.class public Lorg/jdom/DocType;
.super Lorg/jdom/Content;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: DocType.java,v $ $Revision: 1.32 $ $Date: 2007/11/10 05:28:58 $ $Name:  $"


# instance fields
.field protected elementName:Ljava/lang/String;

.field protected internalSubset:Ljava/lang/String;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jdom/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/DocType;->setElementName(Ljava/lang/String;)Lorg/jdom/DocType;

    invoke-virtual {p0, p2}, Lorg/jdom/DocType;->setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;

    invoke-virtual {p0, p3}, Lorg/jdom/DocType;->setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;

    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/DocType;->internalSubset:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setElementName(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/DocType;->elementName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/DocType;->internalSubset:Ljava/lang/String;

    return-void
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkPublicID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/DocType;->publicID:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom/DocType;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/DocType;->systemID:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "DocType"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DocType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/DocType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
