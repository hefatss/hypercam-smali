.class public Lorg/dom4j/util/UserDataDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "SourceFile"


# static fields
.field public static transient singleton:Lorg/dom4j/util/UserDataDocumentFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/dom4j/util/UserDataDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/util/UserDataDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/util/UserDataDocumentFactory;->singleton:Lorg/dom4j/util/UserDataDocumentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .line 1
    sget-object v0, Lorg/dom4j/util/UserDataDocumentFactory;->singleton:Lorg/dom4j/util/UserDataDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 0

    .line 1
    new-instance p0, Lorg/dom4j/util/UserDataAttribute;

    invoke-direct {p0, p2, p3}, Lorg/dom4j/util/UserDataAttribute;-><init>(Lorg/dom4j/QName;Ljava/lang/String;)V

    return-object p0
.end method

.method public createElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;
    .locals 0

    .line 1
    new-instance p0, Lorg/dom4j/util/UserDataElement;

    invoke-direct {p0, p1}, Lorg/dom4j/util/UserDataElement;-><init>(Lorg/dom4j/QName;)V

    return-object p0
.end method
