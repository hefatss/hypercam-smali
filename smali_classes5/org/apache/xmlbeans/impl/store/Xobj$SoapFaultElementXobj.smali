.class public Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;
.super Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/soap/SOAPFaultElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Xobj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoapFaultElementXobj"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-void
.end method


# virtual methods
.method public newNode(Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Xobj;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/Xobj;->_name:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/store/Xobj$SoapFaultElementXobj;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method
