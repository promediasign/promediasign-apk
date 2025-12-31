.class public Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;
.super Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;

.field private static final signed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 147

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v0, Ljava/util/HashSet;

    const-string v145, "xlMacrosheet"

    const-string v146, "xmlMaps"

    const-string v1, "activeXControlBinary"

    const-string v2, "aFChunk"

    const-string v3, "attachedTemplate"

    const-string v4, "attachedToolbars"

    const-string v5, "audio"

    const-string v6, "calcChain"

    const-string v7, "chart"

    const-string v8, "chartColorStyle"

    const-string v9, "chartLayout"

    const-string v10, "chartsheet"

    const-string v11, "chartStyle"

    const-string v12, "chartUserShapes"

    const-string v13, "commentAuthors"

    const-string v14, "comments"

    const-string v15, "connections"

    const-string v16, "connectorXml"

    const-string v17, "control"

    const-string v18, "ctrlProp"

    const-string v19, "customData"

    const-string v20, "customData"

    const-string v21, "customProperty"

    const-string v22, "customXml"

    const-string v23, "diagram"

    const-string v24, "diagramColors"

    const-string v25, "diagramColorsHeader"

    const-string v26, "diagramData"

    const-string v27, "diagramDrawing"

    const-string v28, "diagramLayout"

    const-string v29, "diagramLayoutHeader"

    const-string v30, "diagramQuickStyle"

    const-string v31, "diagramQuickStyleHeader"

    const-string v32, "dialogsheet"

    const-string v33, "dictionary"

    const-string v34, "documentParts"

    const-string v35, "downRev"

    const-string v36, "drawing"

    const-string v37, "endnotes"

    const-string v38, "externalLink"

    const-string v39, "externalLinkPath"

    const-string v40, "font"

    const-string v41, "fontTable"

    const-string v42, "footer"

    const-string v43, "footnotes"

    const-string v44, "functionPrototypes"

    const-string v45, "glossaryDocument"

    const-string v46, "graphicFrameDoc"

    const-string v47, "groupShapeXml"

    const-string v48, "handoutMaster"

    const-string v49, "hdphoto"

    const-string v50, "header"

    const-string v51, "hyperlink"

    const-string v52, "image"

    const-string v53, "ink"

    const-string v54, "inkXml"

    const-string v55, "keyMapCustomizations"

    const-string v56, "legacyDiagramText"

    const-string v57, "legacyDocTextInfo"

    const-string v58, "mailMergeHeaderSource"

    const-string v59, "mailMergeRecipientData"

    const-string v60, "mailMergeSource"

    const-string v61, "media"

    const-string v62, "notesMaster"

    const-string v63, "notesSlide"

    const-string v64, "numbering"

    const-string v65, "officeDocument"

    const-string v66, "officeDocument"

    const-string v67, "oleObject"

    const-string v68, "package"

    const-string v69, "pictureXml"

    const-string v70, "pivotCacheDefinition"

    const-string v71, "pivotCacheRecords"

    const-string v72, "pivotTable"

    const-string v73, "powerPivotData"

    const-string v74, "presProps"

    const-string v75, "printerSettings"

    const-string v76, "queryTable"

    const-string v77, "recipientData"

    const-string v78, "settings"

    const-string v79, "shapeXml"

    const-string v80, "sharedStrings"

    const-string v81, "sheetMetadata"

    const-string v82, "slicer"

    const-string v83, "slicer"

    const-string v84, "slicerCache"

    const-string v85, "slicerCache"

    const-string v86, "slide"

    const-string v87, "slideLayout"

    const-string v88, "slideMaster"

    const-string v89, "slideUpdateInfo"

    const-string v90, "slideUpdateUrl"

    const-string v91, "smartTags"

    const-string v92, "styles"

    const-string v93, "stylesWithEffects"

    const-string v94, "table"

    const-string v95, "tableSingleCells"

    const-string v96, "tableStyles"

    const-string v97, "tags"

    const-string v98, "theme"

    const-string v99, "themeOverride"

    const-string v100, "timeline"

    const-string v101, "timelineCache"

    const-string v102, "transform"

    const-string v103, "ui/altText"

    const-string v104, "ui/buttonSize"

    const-string v105, "ui/controlID"

    const-string v106, "ui/description"

    const-string v107, "ui/enabled"

    const-string v108, "ui/extensibility"

    const-string v109, "ui/extensibility"

    const-string v110, "ui/helperText"

    const-string v111, "ui/imageID"

    const-string v112, "ui/imageMso"

    const-string v113, "ui/keyTip"

    const-string v114, "ui/label"

    const-string v115, "ui/lcid"

    const-string v116, "ui/loud"

    const-string v117, "ui/pressed"

    const-string v118, "ui/progID"

    const-string v119, "ui/ribbonID"

    const-string v120, "ui/showImage"

    const-string v121, "ui/showLabel"

    const-string v122, "ui/supertip"

    const-string v123, "ui/target"

    const-string v124, "ui/text"

    const-string v125, "ui/title"

    const-string v126, "ui/tooltip"

    const-string v127, "ui/userCustomization"

    const-string v128, "ui/visible"

    const-string v129, "userXmlData"

    const-string v130, "vbaProject"

    const-string v131, "video"

    const-string v132, "viewProps"

    const-string v133, "vmlDrawing"

    const-string v134, "volatileDependencies"

    const-string v135, "webSettings"

    const-string v136, "wordVbaData"

    const-string v137, "worksheet"

    const-string v138, "wsSortMap"

    const-string v139, "xlBinaryIndex"

    const-string v140, "xlExternalLinkPath/xlAlternateStartup"

    const-string v141, "xlExternalLinkPath/xlLibrary"

    const-string v142, "xlExternalLinkPath/xlPathMissing"

    const-string v143, "xlExternalLinkPath/xlStartup"

    const-string v144, "xlIntlMacrosheet"

    filled-new-array/range {v1 .. v146}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;-><init>()V

    return-void
.end method

.method public static getRelationshipReferenceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const-string v1, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getResourceReferenceURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const-string v1, "?ContentType="

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p1}, LA/g;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static isSignedRelationship(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    .line 2
    .line 3
    const-string v1, "relationship type: "

    .line 4
    .line 5
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v1, v3, v4

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const-string v0, ".*/relationships/"

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "customXml"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :cond_1
    :goto_0
    return v2
.end method

.method private static normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "part name: "

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p0}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URI;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/16 p1, 0x5c

    .line 32
    .line 33
    const/16 v2, 0x2f

    .line 34
    .line 35
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-array v2, v0, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    aput-object v1, v2, v3

    .line 57
    .line 58
    invoke-virtual {p1, v0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method


# virtual methods
.method public addManifestObject(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newManifest(Ljava/util/List;)Ljavax/xml/crypto/dsig/Manifest;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureTime(Lorg/w3c/dom/Document;Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    const-string v0, "idPackageObject"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "#idPackageObject"

    const-string v3, "http://www.w3.org/2000/09/xmldsig#Object"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addManifestReferences(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    iget-object v1, v7, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 9
    .line 10
    .line 11
    move-result-object v9

    .line 12
    const-string v1, "application/vnd.openxmlformats-package.relationships+xml"

    .line 13
    .line 14
    invoke-virtual {v9, v1}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v10, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v12, v1

    .line 38
    check-cast v12, Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 39
    .line 40
    invoke-virtual {v12}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "(.*)/_rels/.*"

    .line 49
    .line 50
    const-string v3, "$1"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v13

    .line 56
    :try_start_0
    new-instance v1, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    .line 57
    .line 58
    invoke-direct {v1, v9}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v12}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .line 63
    .line 64
    new-instance v14, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    .line 65
    .line 66
    invoke-direct {v14}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    .line 79
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sget-object v3, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-ne v3, v4, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->isSignedRelationship(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v14, v3}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1, v13}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    :try_start_1
    invoke-static {v1}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v9, v3}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    const-string v4, "customXml"

    .line 143
    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    const-string v2, "inkml+xml"

    .line 151
    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_4

    .line 157
    .line 158
    const-string v2, "text/xml"

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_4

    .line 165
    .line 166
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    .line 167
    .line 168
    const-string v2, "skipping customXml with content type: "

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-array v3, v8, [Ljava/lang/Object;

    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    aput-object v2, v3, v4

    .line 178
    .line 179
    invoke-virtual {v1, v8, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const-string v2, "?ContentType="

    .line 184
    .line 185
    invoke-static {v1, v2, v3}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    const/4 v5, 0x0

    .line 190
    const/4 v6, 0x0

    .line 191
    const/4 v3, 0x0

    .line 192
    const/4 v4, 0x0

    .line 193
    move-object/from16 v1, p0

    .line 194
    .line 195
    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    .line 206
    .line 207
    invoke-direct {v1, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    throw v1

    .line 211
    :cond_5
    invoke-virtual {v14}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->hasSourceIds()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    .line 217
    new-instance v3, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v1, "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    .line 223
    .line 224
    invoke-virtual {v7, v1, v14}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    const-string v1, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    .line 232
    .line 233
    invoke-virtual {v7, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newTransform(Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-static {v2, v13}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    const-string v4, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    .line 258
    .line 259
    invoke-static {v2, v4, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    const/4 v5, 0x0

    .line 264
    const/4 v6, 0x0

    .line 265
    const/4 v4, 0x0

    .line 266
    move-object/from16 v1, p0

    .line 267
    .line 268
    invoke-virtual/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->newReference(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)Ljavax/xml/crypto/dsig/Reference;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :catch_1
    move-exception v0

    .line 278
    new-instance v1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    .line 279
    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v3, "Invalid relationship descriptor: "

    .line 283
    .line 284
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v12}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-direct {v1, v2, v0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    throw v1

    .line 306
    :cond_6
    new-instance v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;

    .line 307
    .line 308
    invoke-direct {v1, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet$1;-><init>(Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 312
    .line 313
    .line 314
    return-void
.end method

.method public addSignatureInfo(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document$Factory;->newInstance()Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;

    const/4 p1, 0x0

    throw p1
.end method

.method public addSignatureTime(Lorg/w3c/dom/Document;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/XMLStructure;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->TIMEZONE_UTC:Ljava/util/TimeZone;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getExecutionTime()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    .line 26
    .line 27
    const-string v2, "now: "

    .line 28
    .line 29
    invoke-static {v2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v4, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aput-object v2, v4, v5

    .line 38
    .line 39
    invoke-virtual {v1, v3, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument$Factory;->newInstance()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->addNewSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "YYYY-MM-DDThh:mm:ssTZD"

    .line 51
    .line 52
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setFormat(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setValue(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lorg/w3c/dom/Element;

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljavax/xml/crypto/dom/DOMStructure;

    .line 74
    .line 75
    invoke-direct {v1, p1}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v2, "#"

    .line 88
    .line 89
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->signatureConfig:Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    .line 93
    .line 94
    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "idSignatureTime"

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1, v2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/4 v1, 0x0

    .line 124
    invoke-virtual {p1, v0, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public preSign(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "pre sign"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestObject(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureInfo(Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
