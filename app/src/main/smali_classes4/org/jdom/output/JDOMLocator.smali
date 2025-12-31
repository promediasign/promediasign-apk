.class public Lorg/jdom/output/JDOMLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMLocator.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:01 $ $Name:  $"


# instance fields
.field private node:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    instance-of v0, p1, Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jdom/output/JDOMLocator;

    invoke-virtual {p1}, Lorg/jdom/output/JDOMLocator;->getNode()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNode()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    return-object v0
.end method

.method public setNode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    return-void
.end method
