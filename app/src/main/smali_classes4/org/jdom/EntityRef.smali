.class public Lorg/jdom/EntityRef;
.super Lorg/jdom/Content;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: EntityRef.java,v $ $Revision: 1.22 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"


# instance fields
.field protected name:Ljava/lang/String;

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

    invoke-direct {p0, p1, v0, v0}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jdom/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    invoke-virtual {p0, p1}, Lorg/jdom/EntityRef;->setName(Ljava/lang/String;)Lorg/jdom/EntityRef;

    invoke-virtual {p0, p2}, Lorg/jdom/EntityRef;->setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    invoke-virtual {p0, p3}, Lorg/jdom/EntityRef;->setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalNameException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkPublicID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/EntityRef;->publicID:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom/EntityRef;
    .locals 3

    invoke-static {p1}, Lorg/jdom/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jdom/EntityRef;->systemID:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[EntityRef: &"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jdom/EntityRef;->name:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ";]"

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
