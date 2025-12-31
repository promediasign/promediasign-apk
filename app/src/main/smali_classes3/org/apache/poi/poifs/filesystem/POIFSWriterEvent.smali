.class public Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private documentName:Ljava/lang/String;

.field private limit:I

.field private path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

.field private stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->documentName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->limit:I

    return-void
.end method


# virtual methods
.method public getLimit()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->limit:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->documentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object v0
.end method

.method public getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    return-object v0
.end method
