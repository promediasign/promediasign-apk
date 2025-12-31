.class public interface abstract Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Definitions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$1;->class$org$apache$xmlbeans$impl$xb$substwsdl$DefinitionsDocument$Definitions:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.substwsdl.DefinitionsDocument$Definitions"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$1;->class$org$apache$xmlbeans$impl$xb$substwsdl$DefinitionsDocument$Definitions:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLTOOLS"

    .line 14
    .line 15
    const-string v2, "definitions05ddelemtype"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/substwsdl/DefinitionsDocument$Definitions;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewBinding()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewImport()Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract addNewMessage()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewPortType()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewService()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewTypes()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getBindingArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getBindingArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getImportArray(I)Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract getImportArray()[Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract getMessageArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getMessageArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getPortTypeArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getPortTypeArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getServiceArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getServiceArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getTypesArray(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getTypesArray()[Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewBinding(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewImport(I)Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;
.end method

.method public abstract insertNewMessage(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewPortType(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewService(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract insertNewTypes(I)Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract removeBinding(I)V
.end method

.method public abstract removeImport(I)V
.end method

.method public abstract removeMessage(I)V
.end method

.method public abstract removePortType(I)V
.end method

.method public abstract removeService(I)V
.end method

.method public abstract removeTypes(I)V
.end method

.method public abstract setBindingArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setBindingArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setImportArray(ILorg/apache/xmlbeans/impl/xb/substwsdl/TImport;)V
.end method

.method public abstract setImportArray([Lorg/apache/xmlbeans/impl/xb/substwsdl/TImport;)V
.end method

.method public abstract setMessageArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setMessageArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setPortTypeArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setPortTypeArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setServiceArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setServiceArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setTypesArray(ILorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setTypesArray([Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract sizeOfBindingArray()I
.end method

.method public abstract sizeOfImportArray()I
.end method

.method public abstract sizeOfMessageArray()I
.end method

.method public abstract sizeOfPortTypeArray()I
.end method

.method public abstract sizeOfServiceArray()I
.end method

.method public abstract sizeOfTypesArray()I
.end method
