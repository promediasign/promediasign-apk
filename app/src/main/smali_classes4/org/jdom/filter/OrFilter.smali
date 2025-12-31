.class final Lorg/jdom/filter/OrFilter;
.super Lorg/jdom/filter/AbstractFilter;
.source "SourceFile"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: OrFilter.java,v $ $Revision: 1.5 $ $Date: 2007/11/10 05:29:00 $"


# instance fields
.field private left:Lorg/jdom/filter/Filter;

.field private right:Lorg/jdom/filter/Filter;


# direct methods
.method public constructor <init>(Lorg/jdom/filter/Filter;Lorg/jdom/filter/Filter;)V
    .locals 0

    invoke-direct {p0}, Lorg/jdom/filter/AbstractFilter;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    iput-object p2, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null filter not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/jdom/filter/OrFilter;

    if-eqz v1, :cond_3

    check-cast p1, Lorg/jdom/filter/OrFilter;

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    iget-object v2, p1, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    iget-object v2, p1, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    iget-object v2, p1, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    iget-object p1, p1, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[OrFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->left:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",\n           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jdom/filter/OrFilter;->right:Lorg/jdom/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
