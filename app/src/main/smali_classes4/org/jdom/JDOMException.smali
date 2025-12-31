.class public Lorg/jdom/JDOMException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMException.java,v $ $Revision: 1.26 $ $Date: 2008/12/10 00:59:51 $ $Name:  $"


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Error occurred in JDOM application."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method private static getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lorg/jdom/JDOMException;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/jdom/JDOMException;

    invoke-virtual {p0}, Lorg/jdom/JDOMException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "java.rmi.RemoteException"

    const-string v1, "detail"

    invoke-static {p0, v0, v1}, Lorg/jdom/JDOMException;->getNestedExceptionFromField(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "javax.naming.NamingException"

    const-string v1, "getRootCause"

    invoke-static {p0, v0, v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    const-string v0, "javax.servlet.ServletException"

    invoke-static {p0, v0, v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNestedException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 2

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static getNestedExceptionFromField(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    :cond_0
    invoke-static {v1}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v1, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/xml/sax/SAXException;

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_0
    instance-of v2, v1, Lorg/jdom/JDOMException;

    if-eqz v2, :cond_0

    :cond_4
    return-object v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Lorg/jdom/JDOMException;->cause:Ljava/lang/Throwable;

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Caused by: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lorg/jdom/JDOMException;->getNestedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Caused by: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    instance-of v1, v0, Lorg/jdom/JDOMException;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
