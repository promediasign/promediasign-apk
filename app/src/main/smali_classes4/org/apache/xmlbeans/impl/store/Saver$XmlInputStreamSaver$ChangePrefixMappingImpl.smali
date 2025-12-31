.class Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ChangePrefixMappingImpl;
.super Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$XmlEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/xml/stream/ChangePrefixMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangePrefixMappingImpl"
.end annotation


# instance fields
.field private _newUri:Ljava/lang/String;

.field private _oldUri:Ljava/lang/String;

.field private _prefix:Ljava/lang/String;


# virtual methods
.method public getNewNamespaceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ChangePrefixMappingImpl;->_newUri:Ljava/lang/String;

    return-object v0
.end method

.method public getOldNamespaceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ChangePrefixMappingImpl;->_oldUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$XmlInputStreamSaver$ChangePrefixMappingImpl;->_prefix:Ljava/lang/String;

    return-object v0
.end method
