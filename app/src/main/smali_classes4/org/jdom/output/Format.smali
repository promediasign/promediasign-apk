.class public Lorg/jdom/output/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom/output/Format$TextMode;,
        Lorg/jdom/output/Format$DefaultEscapeStrategy;
    }
.end annotation


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Format.java,v $ $Revision: 1.14 $ $Date: 2009/07/23 05:54:23 $ $Name:  $"

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STANDARD_INDENT:Ljava/lang/String; = "  "

.field private static final STANDARD_LINE_SEPARATOR:Ljava/lang/String; = "\r\n"

.field static synthetic class$java$lang$String:Ljava/lang/Class;


# instance fields
.field encoding:Ljava/lang/String;

.field escapeStrategy:Lorg/jdom/output/EscapeStrategy;

.field expandEmptyElements:Z

.field ignoreTrAXEscapingPIs:Z

.field indent:Ljava/lang/String;

.field lineSeparator:Ljava/lang/String;

.field mode:Lorg/jdom/output/Format$TextMode;

.field omitDeclaration:Z

.field omitEncoding:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    const-string v0, "\r\n"

    iput-object v0, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    iput-boolean v1, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    iput-boolean v1, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    iput-boolean v1, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    sget-object v1, Lorg/jdom/output/Format$TextMode;->PRESERVE:Lorg/jdom/output/Format$TextMode;

    iput-object v1, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    new-instance v1, Lorg/jdom/output/Format$DefaultEscapeStrategy;

    invoke-direct {v1, p0, v0}, Lorg/jdom/output/Format$DefaultEscapeStrategy;-><init>(Lorg/jdom/output/Format;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCompactFormat()Lorg/jdom/output/Format;
    .locals 2

    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    sget-object v1, Lorg/jdom/output/Format$TextMode;->NORMALIZE:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;

    return-object v0
.end method

.method public static getPrettyFormat()Lorg/jdom/output/Format;
    .locals 2

    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setIndent(Ljava/lang/String;)Lorg/jdom/output/Format;

    sget-object v1, Lorg/jdom/output/Format$TextMode;->TRIM:Lorg/jdom/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom/output/Format;->setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;

    return-object v0
.end method

.method public static getRawFormat()Lorg/jdom/output/Format;
    .locals 1

    new-instance v0, Lorg/jdom/output/Format;

    invoke-direct {v0}, Lorg/jdom/output/Format;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/output/Format;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeStrategy()Lorg/jdom/output/EscapeStrategy;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    return-object v0
.end method

.method public getExpandEmptyElements()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    return v0
.end method

.method public getIgnoreTrAXEscapingPIs()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitDeclaration()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    return v0
.end method

.method public getOmitEncoding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    return v0
.end method

.method public getTextMode()Lorg/jdom/output/Format$TextMode;
    .locals 1

    iget-object v0, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 1

    iput-object p1, p0, Lorg/jdom/output/Format;->encoding:Ljava/lang/String;

    new-instance v0, Lorg/jdom/output/Format$DefaultEscapeStrategy;

    invoke-direct {v0, p0, p1}, Lorg/jdom/output/Format$DefaultEscapeStrategy;-><init>(Lorg/jdom/output/Format;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    return-object p0
.end method

.method public setEscapeStrategy(Lorg/jdom/output/EscapeStrategy;)Lorg/jdom/output/Format;
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/Format;->escapeStrategy:Lorg/jdom/output/EscapeStrategy;

    return-object p0
.end method

.method public setExpandEmptyElements(Z)Lorg/jdom/output/Format;
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/Format;->expandEmptyElements:Z

    return-object p0
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/Format;->ignoreTrAXEscapingPIs:Z

    return-void
.end method

.method public setIndent(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/Format;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public setLineSeparator(Ljava/lang/String;)Lorg/jdom/output/Format;
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/Format;->lineSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public setOmitDeclaration(Z)Lorg/jdom/output/Format;
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/Format;->omitDeclaration:Z

    return-object p0
.end method

.method public setOmitEncoding(Z)Lorg/jdom/output/Format;
    .locals 0

    iput-boolean p1, p0, Lorg/jdom/output/Format;->omitEncoding:Z

    return-object p0
.end method

.method public setTextMode(Lorg/jdom/output/Format$TextMode;)Lorg/jdom/output/Format;
    .locals 0

    iput-object p1, p0, Lorg/jdom/output/Format;->mode:Lorg/jdom/output/Format$TextMode;

    return-object p0
.end method
