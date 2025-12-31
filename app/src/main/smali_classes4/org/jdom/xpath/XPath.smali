.class public abstract Lorg/jdom/xpath/XPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/xpath/XPath$XPathString;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: XPath.java,v $ $Revision: 1.17 $ $Date: 2007/11/10 05:29:02 $ $Name:  $"

.field private static final DEFAULT_XPATH_CLASS:Ljava/lang/String; = "org.jdom.xpath.JaxenXPath"

.field public static final JDOM_OBJECT_MODEL_URI:Ljava/lang/String; = "http://jdom.org/jaxp/xpath/jdom"

.field private static final XPATH_CLASS_PROPERTY:Ljava/lang/String; = "org.jdom.xpath.class"

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$org$jdom$xpath$XPath:Ljava/lang/Class;

.field private static constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;
    .locals 3

    const-string v0, "org.jdom.xpath.JaxenXPath"

    :try_start_0
    sget-object v1, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "org.jdom.xpath.class"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jdom/JDOMException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_4

    :catch_3
    :goto_0
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/xpath/XPath;->setXPathClass(Ljava/lang/Class;)V

    :cond_0
    sget-object v0, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jdom/xpath/XPath;
    :try_end_2
    .catch Lorg/jdom/JDOMException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    instance-of v0, p0, Lorg/jdom/JDOMException;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/jdom/JDOMException;

    goto :goto_3

    :cond_1
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_3
    throw p0

    :goto_4
    throw p0
.end method

.method public static selectNodes(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jdom/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/jdom/xpath/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static selectSingleNode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/jdom/xpath/XPath;->newInstance(Ljava/lang/String;)Lorg/jdom/xpath/XPath;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/jdom/xpath/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static setXPathClass(Ljava/lang/Class;)V
    .locals 3

    const-string v0, " is not a concrete JDOM XPath implementation"

    if-eqz p0, :cond_3

    :try_start_0
    sget-object v1, Lorg/jdom/xpath/XPath;->class$org$jdom$xpath$XPath:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.jdom.xpath.XPath"

    invoke-static {v1}, Lorg/jdom/xpath/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/jdom/xpath/XPath;->class$org$jdom$xpath$XPath:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lorg/jdom/xpath/XPath;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/jdom/xpath/XPath;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/jdom/xpath/XPath;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    sput-object p0, Lorg/jdom/xpath/XPath;->constructor:Ljava/lang/reflect/Constructor;

    return-void

    :cond_2
    new-instance v1, Lorg/jdom/JDOMException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lorg/jdom/JDOMException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/jdom/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "aClass"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jdom/xpath/XPath;->addNamespace(Lorg/jdom/Namespace;)V

    return-void
.end method

.method public abstract addNamespace(Lorg/jdom/Namespace;)V
.end method

.method public abstract getXPath()Ljava/lang/String;
.end method

.method public abstract numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
.end method

.method public abstract selectNodes(Ljava/lang/Object;)Ljava/util/List;
.end method

.method public abstract selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract setVariable(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract valueOf(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/jdom/xpath/XPath$XPathString;

    invoke-virtual {p0}, Lorg/jdom/xpath/XPath;->getXPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom/xpath/XPath$XPathString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
