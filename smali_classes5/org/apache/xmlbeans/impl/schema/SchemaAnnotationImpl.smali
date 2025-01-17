.class public Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaAnnotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;
    }
.end annotation


# instance fields
.field private _appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

.field private _appInfoAsXml:[Ljava/lang/String;

.field private _attributes:[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

.field private _container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

.field private _documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

.field private _documentationAsXml:[Ljava/lang/String;

.field private _filename:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;[Ljava/lang/String;[Ljava/lang/String;[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    .line 5
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfoAsXml:[Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentationAsXml:[Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_attributes:[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

    return-void
.end method

.method private static addNoSchemaAttributes(Lorg/apache/xmlbeans/XmlObject;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstAttribute()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getTextValue()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    .line 10
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    .line 11
    invoke-interface {p0, v2}, Lorg/apache/xmlbeans/XmlCursor;->namespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    .line 13
    new-instance v3, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextAttribute()Z

    move-result v0

    goto :goto_0

    .line 15
    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    return-void
.end method

.method public static getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;
    .locals 3

    .line 3
    invoke-static {}, Lorg/apache/xmlbeans/impl/schema/StscState;->get()Lorg/apache/xmlbeans/impl/schema/StscState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/StscState;->noAnn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;-><init>(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;)V

    .line 5
    new-instance p0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-static {p1, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->addNoSchemaAttributes(Lorg/apache/xmlbeans/XmlObject;Ljava/util/List;)V

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x0

    new-array p2, p1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    .line 8
    iput-object p2, v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    new-array p1, p1, [Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    .line 9
    iput-object p1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;->getAppinfoArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    move-result-object p1

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    .line 11
    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;->getDocumentationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    move-result-object p1

    iput-object p1, v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    .line 12
    invoke-static {p2, p0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->addNoSchemaAttributes(Lorg/apache/xmlbeans/XmlObject;Ljava/util/List;)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl$AttributeImpl;

    iput-object p0, v0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_attributes:[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

    return-object v0
.end method

.method public static getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;->getAnnotation()Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->getAnnotation(Lorg/apache/xmlbeans/impl/schema/SchemaContainer;Lorg/apache/xmlbeans/XmlObject;Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;)Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getApplicationInformation()[Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfoAsXml:[Ljava/lang/String;

    array-length v0, v0

    .line 3
    new-array v1, v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfoAsXml:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 5
    :try_start_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;->getAppinfo()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    invoke-static {}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Factory;->newInstance()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;->getAppinfo()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_appInfo:[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;

    return-object p0
.end method

.method public getAttributes()[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_attributes:[Lorg/apache/xmlbeans/SchemaAnnotation$Attribute;

    return-object p0
.end method

.method public getComponentRef()Lorg/apache/xmlbeans/SchemaComponent$Ref;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getComponentType()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getContainer()Lorg/apache/xmlbeans/impl/schema/SchemaContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    return-object p0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_filename:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_container:Lorg/apache/xmlbeans/impl/schema/SchemaContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaContainer;->getTypeSystem()Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUserInformation()[Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentationAsXml:[Ljava/lang/String;

    array-length v0, v0

    .line 3
    new-array v1, v0, [Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentationAsXml:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 5
    :try_start_0
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Factory;->parse(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument;->getDocumentation()Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    invoke-static {}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Factory;->newInstance()Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument;->getDocumentation()Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    move-result-object v3

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_documentation:[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;

    return-object p0
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaAnnotationImpl;->_filename:Ljava/lang/String;

    return-void
.end method
