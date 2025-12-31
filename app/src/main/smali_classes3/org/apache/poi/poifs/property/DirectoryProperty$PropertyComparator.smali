.class public Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/property/DirectoryProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/poi/poifs/property/Property;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/poifs/property/Property;

    check-cast p2, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/property/DirectoryProperty$PropertyComparator;->compare(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/property/Property;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/property/Property;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_5

    const-string v0, "_VBA_PROJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    const-string v0, "__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_5
    :goto_2
    return v0
.end method
