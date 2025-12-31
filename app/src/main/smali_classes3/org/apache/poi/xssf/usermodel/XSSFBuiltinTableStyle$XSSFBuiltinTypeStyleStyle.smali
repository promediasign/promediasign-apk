.class public Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/TableStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XSSFBuiltinTypeStyleStyle"
.end annotation


# instance fields
.field private final builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

.field private final style:Lorg/apache/poi/ss/usermodel/TableStyle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;Lorg/apache/poi/ss/usermodel/TableStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->builtIn:Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/TableStyle;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFBuiltinTableStyle$XSSFBuiltinTypeStyleStyle;->style:Lorg/apache/poi/ss/usermodel/TableStyle;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/TableStyle;->getStyle(Lorg/apache/poi/ss/usermodel/TableStyleType;)Lorg/apache/poi/ss/usermodel/DifferentialStyleProvider;

    move-result-object p1

    return-object p1
.end method

.method public isBuiltin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
