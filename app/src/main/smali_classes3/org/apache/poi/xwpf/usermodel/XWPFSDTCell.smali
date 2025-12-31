.class public Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;
.super Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ICell;


# instance fields
.field private final cellContent:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V
    .locals 1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;->getSdtPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/apache/poi/xwpf/usermodel/AbstractXWPFSDT;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtPr;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    new-instance v0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtCell;->getSdtContent()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtContentCell;Lorg/apache/poi/xwpf/usermodel/XWPFTableRow;Lorg/apache/poi/xwpf/usermodel/IBody;)V

    iput-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->cellContent:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;

    return-void
.end method


# virtual methods
.method public getContent()Lorg/apache/poi/xwpf/usermodel/ISDTContent;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFSDTCell;->cellContent:Lorg/apache/poi/xwpf/usermodel/XWPFSDTContentCell;

    return-object v0
.end method
