.class public Lorg/jdom/transform/XSLTransformException;
.super Lorg/jdom/JDOMException;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XSLTransformException.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:02 $ $Name:  $"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jdom/JDOMException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
