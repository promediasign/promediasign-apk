.class public Lorg/apache/poi/poifs/filesystem/DirectoryNode;
.super Lorg/apache/poi/poifs/filesystem/EntryNode;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
.implements Lorg/apache/poi/poifs/dev/POIFSViewable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/poifs/filesystem/EntryNode;",
        "Lorg/apache/poi/poifs/filesystem/DirectoryEntry;",
        "Lorg/apache/poi/poifs/dev/POIFSViewable;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/poifs/filesystem/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private _byname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private _entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private _nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

.field private _ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

.field private _path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;


# direct methods
.method private constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/EntryNode;-><init>(Lorg/apache/poi/poifs/property/Property;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    iput-object p4, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {p2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    goto :goto_0

    :cond_0
    new-instance p3, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object p2, p2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p2, p4}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->getChildren()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/property/Property;

    invoke-virtual {p2}, Lorg/apache/poi/poifs/property/Property;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_2

    check-cast p2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    new-instance p4, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz p3, :cond_1

    invoke-direct {p4, p2, p3, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p4, p2, p3, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    goto :goto_2

    :cond_2
    new-instance p4, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    check-cast p2, Lorg/apache/poi/poifs/property/DocumentProperty;

    invoke-direct {p4, p2, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    :goto_2
    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {p4}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V

    return-void
.end method


# virtual methods
.method public changeName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/EntryNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/apache/poi/poifs/property/DirectoryProperty;->changeName(Lorg/apache/poi/poifs/property/Property;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .locals 3

    new-instance v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/property/DirectoryProperty;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v1, :cond_0

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v2, v0, v1, p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;-><init>(Lorg/apache/poi/poifs/property/DirectoryProperty;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->addDirectory(Lorg/apache/poi/poifs/property/DirectoryProperty;)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v1, p1, p2, v0, p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Lorg/apache/poi/poifs/filesystem/POIFSWriterListener;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {v1, p1, v0, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public createDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 3

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->addDocument(Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 3

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;->getDocumentProperty()Lorg/apache/poi/poifs/property/DocumentProperty;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentNode;-><init>(Lorg/apache/poi/poifs/property/DocumentProperty;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {v2, v0}, Lorg/apache/poi/poifs/property/DirectoryProperty;->addChild(Lorg/apache/poi/poifs/property/Property;)V

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    invoke-virtual {v2, p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->addDocument(Lorg/apache/poi/poifs/filesystem/OPOIFSDocument;)V

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 3

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->isDocumentEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a DocumentEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createOrUpdateDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    if-eqz v1, :cond_1

    new-instance p1, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentNode;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/NPOIFSDocument;->replaceContents(Ljava/io/InputStream;)V

    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->deleteEntry(Lorg/apache/poi/poifs/filesystem/EntryNode;)Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object p1

    return-object p1
.end method

.method public deleteEntry(Lorg/apache/poi/poifs/filesystem/EntryNode;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/property/DirectoryProperty;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/poifs/property/DirectoryProperty;->deleteChild(Lorg/apache/poi/poifs/property/Property;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->remove(Lorg/apache/poi/poifs/filesystem/EntryNode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public getEntries()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 17
    .line 18
    const-string v1, "no such entry: \""

    .line 19
    .line 20
    const-string v2, "\", had: "

    .line 21
    .line 22
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public getEntryCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEntryNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-object v0
.end method

.method public getNFileSystem()Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_nfilesystem:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-object v0
.end method

.method public getOFileSystem()Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_ofilesystem:Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStorageClsid()Lorg/apache/poi/hpsf/ClassID;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/property/Property;->getStorageClsid()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v0

    return-object v0
.end method

.method public getViewableArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getViewableIterator()Ljava/util/Iterator;
    .locals 3
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

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasEntry(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_byname:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDeleteOK()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isDirectoryEntry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->_entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/poifs/filesystem/Entry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntries()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preferArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getProperty()Lorg/apache/poi/poifs/property/Property;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/property/Property;->setStorageClsid(Lorg/apache/poi/hpsf/ClassID;)V

    return-void
.end method
