.class public interface abstract Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;
    }
.end annotation


# static fields
.field public static final HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_CERTIFICATE:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field public static final HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_PASSWORD:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.s8C3F193EE11A2F798ACF65489B9E6078"

    .line 4
    .line 5
    const-string v2, "uribad9attrtype"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    const-string v0, "http://schemas.microsoft.com/office/2006/keyEncryptor/password"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_PASSWORD:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 22
    .line 23
    const-string v0, "http://schemas.microsoft.com/office/2006/keyEncryptor/certificate"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_CERTIFICATE:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    .line 30
    .line 31
    return-void
.end method
