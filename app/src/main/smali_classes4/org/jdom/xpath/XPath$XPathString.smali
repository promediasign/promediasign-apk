.class final Lorg/jdom/xpath/XPath$XPathString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XPathString"
.end annotation


# instance fields
.field private xPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/xpath/XPath$XPathString;->xPath:Ljava/lang/String;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/jdom/xpath/XPath$XPathString;->xPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/jdom/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;

    move-result-object v0
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Can\'t create XPath object for expression \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jdom/xpath/XPath$XPathString;->xPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
