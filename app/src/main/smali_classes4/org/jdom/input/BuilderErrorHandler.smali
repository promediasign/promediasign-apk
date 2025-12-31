.class public Lorg/jdom/input/BuilderErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: BuilderErrorHandler.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:29:00 $ $Name:  $"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0

    return-void
.end method
