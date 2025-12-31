.class final Lorg/jdom/NamespaceKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: NamespaceKey.java,v $ $Revision: 1.2 $ $Date: 2007/11/10 05:28:59 $ $Name:  $"


# instance fields
.field private hash:I

.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/jdom/NamespaceKey;->hash:I

    return-void
.end method

.method public constructor <init>(Lorg/jdom/Namespace;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/jdom/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jdom/NamespaceKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/jdom/NamespaceKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/jdom/NamespaceKey;

    iget-object v1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    iget-object v3, p1, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/jdom/NamespaceKey;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "[NamespaceKey: prefix \""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/jdom/NamespaceKey;->prefix:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/jdom/NamespaceKey;->uri:Ljava/lang/String;

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
