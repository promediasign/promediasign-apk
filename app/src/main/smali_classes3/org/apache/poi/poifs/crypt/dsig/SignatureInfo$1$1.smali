.class Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;",
        ">;"
    }
.end annotation


# instance fields
.field pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field sigOrigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

.field sigRels:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/openxml4j/opc/PackageRelationship;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V
    .locals 1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$000(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    const-string v0, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/origin"

    invoke-virtual {p1, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->pkg:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigOrigRels:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Digital Signature Origin part"

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v3, v2, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    const-string v4, "http://schemas.openxmlformats.org/package/2006/relationships/digital-signature/signature"

    invoke-virtual {v3, v4}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationshipsByType(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Reference to signature is invalid."

    aput-object v6, v5, v1

    aput-object v3, v5, v2

    const/4 v3, 0x5

    invoke-virtual {v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->next()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;
    .locals 9

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigRels:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v5, v6}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelatedPart(Lorg/apache/poi/openxml4j/opc/PackageRelationship;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v4

    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "XML Signature part"

    aput-object v7, v6, v0

    aput-object v4, v6, v2

    invoke-virtual {v5, v2, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/NoSuchElementException;

    invoke-direct {v5}, Ljava/util/NoSuchElementException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->access$200()Lorg/apache/poi/util/POILogger;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Reference to signature is invalid."

    aput-object v8, v7, v0

    aput-object v5, v7, v2

    const/4 v5, 0x5

    invoke-virtual {v6, v5, v7}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_1
    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->sigPart:Lorg/apache/poi/openxml4j/opc/PackagePart;

    if-eqz v5, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1$1;->this$1:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;

    iget-object v1, v1, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;->this$0:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$SignaturePart;-><init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/apache/poi/openxml4j/opc/PackagePart;Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo$1;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
