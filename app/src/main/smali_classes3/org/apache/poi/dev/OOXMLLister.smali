.class public Lorg/apache/poi/dev/OOXMLLister;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private final disp:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/dev/OOXMLLister;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Ljava/io/PrintStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/dev/OOXMLLister;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    iput-object p2, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    return-void
.end method

.method private displayRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "Relationship:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 24
    .line 25
    const-string v1, "\tFrom: "

    .line 26
    .line 27
    invoke-static {p2, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getSourceURI()Ljava/net/URI;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 46
    .line 47
    const-string v1, "\tTo:   "

    .line 48
    .line 49
    invoke-static {p2, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 68
    .line 69
    const-string v1, "\tID:   "

    .line 70
    .line 71
    invoke-static {p2, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 90
    .line 91
    const-string v1, "\tMode: "

    .line 92
    .line 93
    invoke-static {p2, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    .line 112
    .line 113
    const-string v1, "\tType: "

    .line 114
    .line 115
    invoke-static {p2, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static getSize(Lorg/apache/poi/openxml4j/opc/PackagePart;)J
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v3, :cond_0

    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-wide v1

    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Use:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "\tjava OOXMLLister <filename>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error, file not found!"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_1
    new-instance p0, Lorg/apache/poi/dev/OOXMLLister;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/openxml4j/opc/PackageAccess;->READ:Lorg/apache/poi/openxml4j/opc/PackageAccess;

    invoke-static {v1, v2}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->open(Ljava/lang/String;Lorg/apache/poi/openxml4j/opc/PackageAccess;)Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/poi/dev/OOXMLLister;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/dev/OOXMLLister;->displayParts()V

    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {p0}, Lorg/apache/poi/dev/OOXMLLister;->displayRelations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/poi/dev/OOXMLLister;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/poi/dev/OOXMLLister;->close()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->close()V

    return-void
.end method

.method public displayParts()V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getParts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackagePart;

    iget-object v2, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/docProps/core.xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/poi/dev/OOXMLLister;->getSize(Lorg/apache/poi/openxml4j/opc/PackagePart;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->isRelationshipPart()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/dev/OOXMLLister;->disp:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " relations"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const-string v3, "\t  "

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/dev/OOXMLLister;->displayRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public displayRelations()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/dev/OOXMLLister;->container:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getRelationships()Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lorg/apache/poi/dev/OOXMLLister;->displayRelation(Lorg/apache/poi/openxml4j/opc/PackageRelationship;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
