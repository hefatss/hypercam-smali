.class public Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hdf/model/util/BTreeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTreeNode"
.end annotation


# instance fields
.field private final MIN:I

.field public entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

.field private nrElements:I

.field public parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

.field public final synthetic this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hdf/model/util/BTreeSet;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 3
    invoke-static {p1}, Lorg/apache/poi/hdf/model/util/BTreeSet;->access$200(Lorg/apache/poi/hdf/model/util/BTreeSet;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    .line 4
    iput-object p2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 5
    invoke-static {p1}, Lorg/apache/poi/hdf/model/util/BTreeSet;->access$200(Lorg/apache/poi/hdf/model/util/BTreeSet;)I

    move-result p1

    new-array p1, p1, [Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iput-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    .line 6
    new-instance p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object p0, p1, v0

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    return p0
.end method

.method private childToInsertAt(Ljava/lang/Object;Z)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    div-int/lit8 v1, v0, 0x2

    .line 2
    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v2, v1

    if-eqz v3, :cond_6

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v4, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v4, v4, v1

    iget-object v4, v4, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lorg/apache/poi/hdf/model/util/BTreeSet;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    add-int v1, v0, v2

    .line 4
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    add-int v1, v0, v2

    .line 5
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    aget-object p2, v1, v0

    iget-object p2, p2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_5

    const/4 v0, -0x1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method private deleteElement(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    :goto_0
    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v1, p1, 0x1

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v2, v0, p1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 5
    :goto_1
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    return-void
.end method

.method private fixAfterDeletion(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-direct {v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ge v1, v2, :cond_4

    .line 3
    invoke-direct {v0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->prepareForDeletion(I)V

    .line 4
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget v1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ge v1, v2, :cond_4

    .line 6
    iget-object p1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    :goto_1
    iget-object p0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-direct {p0, v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->fixAfterDeletion(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private insertNewElement(Ljava/lang/Object;I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_0
    if-le v0, p2, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v1, v0, p2

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p2, v0, p2

    iput-object p1, p2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 4
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    return-void
.end method

.method private insertSplitNode(Ljava/lang/Object;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_0
    if-lt v0, p4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, v0, 0x1

    aget-object v3, v1, v0

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v1, v0, p4

    .line 3
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v1, v0, p4

    iput-object p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 4
    aget-object p1, v0, p4

    iput-object p2, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    add-int/lit8 p4, p4, 0x1

    .line 5
    aget-object p1, v0, p4

    iput-object p3, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 6
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    return-void
.end method

.method private isFull()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    invoke-static {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet;->access$200(Lorg/apache/poi/hdf/model/util/BTreeSet;)I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLeaf()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRoot()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mergeLeft(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 2
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 4
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-direct {p0, v3, v6}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result v3

    .line 5
    iget-object v7, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v7, v2

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-direct {p0, v7, v3}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insertNewElement(Ljava/lang/Object;I)V

    .line 6
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v3, v2

    iput-object v4, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 7
    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr v3, v6

    iget v7, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_0
    if-ltz v3, :cond_0

    .line 8
    iget-object v8, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int v9, v3, v7

    aget-object v10, v8, v3

    aput-object v10, v8, v9

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 9
    :cond_0
    iget v3, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr v3, v6

    :goto_1
    if-ltz v3, :cond_1

    .line 10
    iget-object v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget-object v8, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 11
    iget v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 12
    :cond_1
    iget v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ne v3, v7, :cond_3

    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eq v0, v3, :cond_3

    add-int/lit8 p1, p1, -0x2

    :goto_2
    if-ltz p1, :cond_2

    .line 13
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v3, p1

    aput-object v7, v3, v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 14
    :cond_2
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v2, p1, v5

    .line 15
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p1, p1, v5

    iput-object v1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    goto :goto_4

    .line 16
    :cond_3
    :goto_3
    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt p1, v1, :cond_4

    .line 17
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    add-int/2addr v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 18
    :cond_4
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aput-object v4, p1, v1

    .line 19
    :goto_4
    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr p1, v6

    iput p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 20
    invoke-direct {v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-nez p1, :cond_b

    .line 21
    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 22
    iput-object v4, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    goto/16 :goto_a

    .line 23
    :cond_5
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v3, v5

    iget-object v8, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v8, v8, v2

    iget-object v8, v8, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v8, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 24
    aget-object v3, v3, v5

    iget-object v7, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v8, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    aget-object v7, v7, v8

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object v7, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 25
    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 26
    iget v7, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_5
    if-ltz v3, :cond_6

    .line 27
    iget-object v8, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int v9, v3, v7

    aget-object v10, v8, v3

    aput-object v10, v8, v9

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 28
    :cond_6
    iget v3, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr v3, v6

    :goto_6
    if-ltz v3, :cond_7

    .line 29
    iget-object v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget-object v8, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 30
    aget-object v7, v7, v3

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object p0, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 31
    iget v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 32
    :cond_7
    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eq v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x2

    :goto_7
    if-ltz p1, :cond_8

    .line 33
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    add-int/2addr v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 35
    :cond_8
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v1, p1, v5

    goto :goto_9

    .line 36
    :cond_9
    :goto_8
    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt p1, v1, :cond_a

    .line 37
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    add-int/2addr v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 38
    :cond_a
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aput-object v4, p1, v1

    .line 39
    :goto_9
    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr p1, v6

    iput p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 40
    invoke-direct {v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-nez p1, :cond_b

    .line 41
    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 42
    iput-object v4, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    :cond_b
    :goto_a
    return-void
.end method

.method private mergeRight(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 2
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 4
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    new-instance v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v7}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v7, v3, v6

    .line 5
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    aget-object v3, v3, v6

    iget-object v7, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v7, p1

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v7, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    .line 6
    iput v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    move v3, v5

    .line 7
    :goto_0
    iget v7, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-ge v3, v7, :cond_0

    .line 8
    iget-object v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget-object v8, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v8, v8, v3

    aput-object v8, v7, v6

    .line 9
    iget v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v6, v3, p1

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v3, v6, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 11
    iget v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eq v0, v3, :cond_2

    :goto_1
    if-ltz p1, :cond_1

    .line 12
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v6, v3, p1

    aput-object v6, v3, v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v2, p1, v5

    .line 14
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p1, p1, v5

    iput-object v1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x2

    .line 15
    :goto_2
    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt p1, v1, :cond_3

    .line 16
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, p1

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 17
    :cond_3
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aput-object v4, p1, v1

    .line 18
    :goto_3
    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 19
    invoke-direct {v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 21
    iput-object v4, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    goto/16 :goto_8

    .line 22
    :cond_4
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    aget-object v3, v3, v6

    iget-object v7, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p1, v7, p1

    iget-object p1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object p1, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    .line 23
    iput v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v6, v6, 0x1

    move p1, v5

    .line 24
    :goto_4
    iget v3, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt p1, v3, :cond_5

    .line 25
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget-object v7, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v8, v7, p1

    aput-object v8, v3, v6

    .line 26
    aget-object v3, v7, p1

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object p0, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 27
    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 28
    :cond_5
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 29
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p1, p1, v2

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 30
    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object p1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eq v0, p1, :cond_7

    add-int/lit8 p1, v2, -0x1

    add-int/lit8 v2, v2, -0x2

    :goto_5
    if-ltz v2, :cond_6

    .line 31
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 32
    :cond_6
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    new-instance v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v1, p1, v5

    goto :goto_7

    :cond_7
    add-int/lit8 p1, v2, -0x1

    .line 33
    :goto_6
    iget v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt v2, v1, :cond_8

    .line 34
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 35
    :cond_8
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aput-object v4, p1, v1

    .line 36
    :goto_7
    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 37
    invoke-direct {v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-nez p1, :cond_9

    .line 38
    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 39
    iput-object v4, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    :cond_9
    :goto_8
    return-void
.end method

.method private prepareForDeletion(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-le v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->stealLeft(I)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v1, p1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eqz v2, :cond_2

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-le v0, v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->stealRight(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->mergeLeft(I)V

    return-void

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->mergeRight(I)V

    return-void
.end method

.method private split()Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;
    .locals 8

    .line 1
    new-instance v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;-><init>(Lorg/apache/poi/hdf/model/util/BTreeSet;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)V

    .line 2
    iget v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    div-int/lit8 v2, v1, 0x2

    .line 3
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-gt v4, v1, :cond_1

    .line 4
    iget-object v5, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget-object v6, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v6, v4

    aput-object v7, v5, v2

    .line 5
    aget-object v7, v5, v2

    if-eqz v7, :cond_0

    aget-object v7, v5, v2

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eqz v7, :cond_0

    .line 6
    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object v0, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 7
    :cond_0
    aput-object v3, v6, v4

    .line 8
    iget v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 9
    iget v5, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget p0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    return-object v0
.end method

.method private splitRoot(Ljava/lang/Object;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;-><init>(Lorg/apache/poi/hdf/model/util/BTreeSet;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)V

    .line 2
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object p1, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 3
    aget-object p1, v1, v2

    iput-object p2, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 4
    new-instance p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 5
    iget-object p1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p1, p1, v2

    iput-object p3, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 6
    iput v2, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 7
    iput-object v0, p3, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object v0, p2, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 8
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iput-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    return-void
.end method

.method private stealLeft(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 2
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v3, v3, p1

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-direct {p0, v3, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result v3

    .line 5
    iget-object v5, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v5, v5, p1

    iget-object v5, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-direct {p0, v5, v3}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insertNewElement(Ljava/lang/Object;I)V

    .line 6
    iget-object p0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p0, p0, p1

    iget-object p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    add-int/lit8 p0, v0, -0x1

    .line 7
    aput-object v4, p1, p0

    sub-int/2addr v0, v2

    .line 8
    iput v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v0, p1

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v7, v6, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 10
    aget-object p1, v0, p1

    iget-object v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v6, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v0, v7

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v7, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 11
    aget-object p1, v3, v5

    aget-object v7, v0, v6

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object v7, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 12
    aget-object p1, v3, v5

    iget-object p1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 13
    aput-object v4, v0, v6

    sub-int/2addr v6, v2

    .line 14
    aget-object p1, v0, v6

    iput-object v4, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 15
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 16
    iget p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    sub-int/2addr p0, v2

    iput p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_0
    return-void
.end method

.method private stealRight(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 2
    iget-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    new-instance v6, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {v6}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object v6, v2, v5

    .line 5
    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    aget-object v2, v2, v5

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v5, v0, p1

    iget-object v5, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v5, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 6
    aget-object p1, v0, p1

    iget-object v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 7
    :goto_0
    iget p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-ge v4, p1, :cond_0

    iget-object p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v0, v4, 0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v4

    move v4, v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 p1, p1, -0x1

    aput-object v3, v0, p1

    .line 9
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 10
    iget p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    goto :goto_3

    :cond_1
    move v2, v4

    .line 11
    :goto_1
    iget v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt v2, v5, :cond_2

    iget-object v5, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v6, v2, 0x1

    aget-object v7, v5, v6

    aput-object v7, v5, v2

    move v2, v6

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v6, v2, v5

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v7, v0, p1

    iget-object v7, v7, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v7, v6, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 13
    aget-object p1, v0, p1

    iget-object v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 14
    new-instance p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    invoke-direct {p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;-><init>()V

    aput-object p1, v2, v5

    .line 15
    iget-object p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    iget-object v5, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v5, v5, v4

    iget-object v5, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object v5, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    add-int/lit8 v0, v0, 0x1

    .line 16
    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iput-object p0, p1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 17
    :goto_2
    iget p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    if-gt v4, p1, :cond_3

    iget-object p1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v0, v4, 0x1

    aget-object v2, p1, v0

    aput-object v2, p1, v4

    move v4, v0

    goto :goto_2

    .line 18
    :cond_3
    iget-object v0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aput-object v3, v0, p1

    .line 19
    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    .line 20
    iget p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    :goto_3
    return-void
.end method

.method private switchWithSuccessor(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result p1

    .line 2
    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 3
    :goto_0
    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    goto :goto_0

    .line 4
    :cond_0
    aget-object v2, v1, v0

    iget-object v2, v2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 5
    aget-object v0, v1, v0

    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v1, p0, p1

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 6
    aget-object p0, p0, p1

    iput-object v2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/Object;I)Z
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v4, p0

    if-eq v1, v3, :cond_3

    move v6, v1

    move v1, p2

    move p2, v6

    .line 2
    :goto_0
    iget-object v4, v4, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v5, v4, p2

    if-eqz v5, :cond_2

    aget-object v5, v4, p2

    iget-object v5, v5, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-nez v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v4, v4, p2

    iget-object v4, v4, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    .line 4
    invoke-direct {v4, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result v5

    if-ne v5, v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, p2

    move p2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    move v1, p2

    .line 5
    :goto_2
    invoke-direct {v4}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    iget v2, v4, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->MIN:I

    if-le v2, v3, :cond_4

    .line 7
    invoke-direct {v4, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->deleteElement(Ljava/lang/Object;)V

    .line 8
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    return v0

    .line 9
    :cond_4
    invoke-direct {v4, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->prepareForDeletion(I)V

    .line 10
    invoke-direct {v4, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->deleteElement(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    .line 12
    invoke-direct {v4, v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->fixAfterDeletion(I)V

    return v0

    .line 13
    :cond_5
    invoke-direct {v4, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->switchWithSuccessor(Ljava/lang/Object;)V

    .line 14
    invoke-direct {v4, p1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result p0

    add-int/2addr p0, v0

    .line 15
    iget-object p2, v4, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p2, p2, p0

    iget-object p2, p2, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-virtual {p2, p1, p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->delete(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public includes(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v0, p0, v1

    if-eqz v0, :cond_2

    aget-object v0, p0, v1

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    aget-object p0, p0, v1

    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->includes(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public insert(Ljava/lang/Object;I)Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isFull()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    iget v3, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->nrElements:I

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->split()Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    move-result-object v3

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-direct {p0, v0, p0, v3}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->splitRoot(Ljava/lang/Object;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;)V

    .line 6
    iget-object p2, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v0, p2, Lorg/apache/poi/hdf/model/util/BTreeSet;->root:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lorg/apache/poi/hdf/model/util/BTreeSet;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_0

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insert(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, p1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insert(Ljava/lang/Object;I)Z

    :goto_0
    return v1

    .line 8
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-direct {v1, v0, p0, v3, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insertSplitNode(Ljava/lang/Object;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;I)V

    .line 9
    iget-object v0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget-object v1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->parent:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object v1, v1, p2

    iget-object v1, v1, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hdf/model/util/BTreeSet;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insert(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    :cond_2
    add-int/2addr p2, v2

    .line 11
    invoke-virtual {v3, p1, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insert(Ljava/lang/Object;I)Z

    move-result p0

    return p0

    .line 12
    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->isLeaf()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_5

    .line 13
    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result p2

    if-ne p2, v0, :cond_4

    return v1

    .line 14
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insertNewElement(Ljava/lang/Object;I)V

    .line 15
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->this$0:Lorg/apache/poi/hdf/model/util/BTreeSet;

    iget p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/poi/hdf/model/util/BTreeSet;->size:I

    return v2

    .line 16
    :cond_5
    invoke-direct {p0, p1, v2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->childToInsertAt(Ljava/lang/Object;Z)I

    move-result p2

    if-ne p2, v0, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->entries:[Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;

    aget-object p0, p0, p2

    iget-object p0, p0, Lorg/apache/poi/hdf/model/util/BTreeSet$Entry;->child:Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hdf/model/util/BTreeSet$BTreeNode;->insert(Ljava/lang/Object;I)Z

    move-result v1

    :goto_1
    return v1
.end method
