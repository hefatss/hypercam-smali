.class public Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntrySet"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;


# direct methods
.method private constructor <init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;-><init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$HashIterator;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$HashIterator;-><init>(Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;->findAndRemoveEntry(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap$EntrySet;->this$0:Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/common/ConcurrentReaderHashMap;->size()I

    move-result p0

    return p0
.end method
