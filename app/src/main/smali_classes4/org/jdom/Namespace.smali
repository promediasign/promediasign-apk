.class public final Lorg/jdom/Namespace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Namespace.java,v $ $Revision: 1.44 $ $Date: 2008/12/17 23:22:48 $ $Name:  $"

.field public static final NO_NAMESPACE:Lorg/jdom/Namespace;

.field public static final XML_NAMESPACE:Lorg/jdom/Namespace;

.field private static namespaces:Ljava/util/HashMap;


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/jdom/Namespace;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    new-instance v1, Lorg/jdom/Namespace;

    const-string v2, "xml"

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v1, v2, v3}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/jdom/Namespace;->XML_NAMESPACE:Lorg/jdom/Namespace;

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v3, Lorg/jdom/NamespaceKey;

    invoke-direct {v3, v0}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    new-instance v2, Lorg/jdom/NamespaceKey;

    invoke-direct {v2, v1}, Lorg/jdom/NamespaceKey;-><init>(Lorg/jdom/Namespace;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    return-void
.end method

.method public static getNamespace(Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/jdom/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public static getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Namespace;
    .locals 3

    .line 2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string p1, ""

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string p0, ""

    :cond_4
    :goto_1
    new-instance v0, Lorg/jdom/NamespaceKey;

    invoke-direct {v0, p0, p1}, Lorg/jdom/NamespaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    invoke-static {p0}, Lorg/jdom/Verifier;->checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {p1}, Lorg/jdom/Verifier;->checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Lorg/jdom/IllegalNameException;

    const-string p1, ""

    const-string v0, "namespace"

    const-string v1, "Namespace URIs must be non-null and non-empty Strings"

    invoke-direct {p0, p1, v0, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Lorg/jdom/Namespace;

    invoke-direct {v1, p0, p1}, Lorg/jdom/Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_1
    sget-object p1, Lorg/jdom/Namespace;->namespaces:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    new-instance p0, Lorg/jdom/IllegalNameException;

    const-string v0, "Namespace URI"

    const-string v1, "The http://www.w3.org/XML/1998/namespace must be bound to the xml prefix."

    invoke-direct {p0, p1, v0, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p1, Lorg/jdom/IllegalNameException;

    const-string v0, "Namespace prefix"

    const-string v1, "The xml prefix can only be bound to http://www.w3.org/XML/1998/namespace"

    invoke-direct {p1, p0, v0, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p0, Lorg/jdom/IllegalNameException;

    const-string v0, "Namespace URI"

    invoke-direct {p0, p1, v0, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p1, Lorg/jdom/IllegalNameException;

    const-string v0, "Namespace prefix"

    invoke-direct {p1, p0, v0, v1}, Lorg/jdom/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_c
    :goto_3
    sget-object p0, Lorg/jdom/Namespace;->NO_NAMESPACE:Lorg/jdom/Namespace;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/jdom/Namespace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    check-cast p1, Lorg/jdom/Namespace;

    iget-object p1, p1, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[Namespace: prefix \""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jdom/Namespace;->prefix:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "\" is mapped to URI \""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/jdom/Namespace;->uri:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "\"]"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
