.class public Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Xsd2InstOptions"
.end annotation


# instance fields
.field private _downloads:Z

.field private _nopvr:Z

.field private _noupa:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_downloads:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_nopvr:Z

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_noupa:Z

    return-void
.end method


# virtual methods
.method public isNetworkDownloads()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_downloads:Z

    return v0
.end method

.method public isNopvr()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_nopvr:Z

    return v0
.end method

.method public isNoupa()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_noupa:Z

    return v0
.end method

.method public setNetworkDownloads(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_downloads:Z

    return-void
.end method

.method public setNopvr(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_nopvr:Z

    return-void
.end method

.method public setNoupa(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/xsd2inst/SchemaInstanceGenerator$Xsd2InstOptions;->_noupa:Z

    return-void
.end method
