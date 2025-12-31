.class Lorg/jdom/xpath/JaxenXPath;
.super Lorg/jdom/xpath/XPath;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/xpath/JaxenXPath$NSContext;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JaxenXPath.java,v $ $Revision: 1.20 $ $Date: 2007/11/10 05:29:02 $ $Name:  $"


# instance fields
.field private currentContext:Ljava/lang/Object;

.field private transient xPath:Lorg/jaxen/jdom/JDOMXPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/xpath/XPath;-><init>()V

    invoke-direct {p0, p1}, Lorg/jdom/xpath/JaxenXPath;->setXPath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/jdom/xpath/JaxenXPath;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object p0
.end method

.method private setXPath(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/jaxen/jdom/JDOMXPath;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/jaxen/jdom/JDOMXPath;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    .line 7
    .line 8
    new-instance v1, Lorg/jdom/xpath/JaxenXPath$NSContext;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lorg/jdom/xpath/JaxenXPath$NSContext;-><init>(Lorg/jdom/xpath/JaxenXPath;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lorg/jaxen/jdom/JDOMXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lorg/jdom/JDOMException;

    .line 19
    .line 20
    const-string v2, "Invalid XPath expression: \""

    .line 21
    .line 22
    const-string v3, "\""

    .line 23
    .line 24
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1, v0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method


# virtual methods
.method public addNamespace(Lorg/jdom/Namespace;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/jaxen/jdom/JDOMXPath;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/jdom/xpath/JaxenXPath;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jdom/xpath/JaxenXPath;

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {p1}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 4

    const-string v0, "XPath error while evaluating \""

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v2, p1}, Lorg/jaxen/jdom/JDOMXPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw p1
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 4

    const-string v0, "XPath error while evaluating \""

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v2, p1}, Lorg/jaxen/jdom/JDOMXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw p1
.end method

.method public selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "XPath error while evaluating \""

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v2, p1}, Lorg/jaxen/jdom/JDOMXPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw p1
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    instance-of v1, v0, Lorg/jaxen/SimpleVariableContext;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jaxen/SimpleVariableContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/jaxen/SimpleVariableContext;->setVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, "XPath error while evaluating \""

    const/4 v1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v2, p1}, Lorg/jaxen/jdom/JDOMXPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v2, Lorg/jdom/JDOMException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jdom/xpath/JaxenXPath;->xPath:Lorg/jaxen/jdom/JDOMXPath;

    invoke-virtual {v0}, Lorg/jaxen/jdom/JDOMXPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Lorg/jdom/xpath/JaxenXPath;->currentContext:Ljava/lang/Object;

    throw p1
.end method
