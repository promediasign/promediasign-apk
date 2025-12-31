.class public Lorg/apache/poi/poifs/filesystem/DocumentNode;
.super Lorg/apache/poi/poifs/filesystem/EntryNode;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DocumentEntry;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;


# instance fields
.field private _document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/EntryNode;-><init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    return-void
.end method


# virtual methods
.method public getDocument()Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getSize()I

    move-result v0

    return v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentNode;->_document:Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isDeleteOK()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDocumentEntry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preferArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
