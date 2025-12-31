.class public interface abstract Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.s8C3F193EE11A2F798ACF65489B9E6078"

    .line 4
    .line 5
    const-string v2, "signaturetime9c91doctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;
.end method

.method public abstract getSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;
.end method

.method public abstract setSignatureTime(Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;)V
.end method
