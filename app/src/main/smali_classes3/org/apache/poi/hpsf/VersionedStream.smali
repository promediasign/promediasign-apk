.class Lorg/apache/poi/hpsf/VersionedStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final _streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

.field private final _versionGuid:Lorg/apache/poi/hpsf/GUID;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/GUID;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_versionGuid:Lorg/apache/poi/hpsf/GUID;

    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-direct {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_versionGuid:Lorg/apache/poi/hpsf/GUID;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/GUID;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hpsf/CodePageString;->read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V

    return-void
.end method
