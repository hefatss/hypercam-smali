.class public final Lorg/apache/poi/ss/formula/functions/Counta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

.field private static final subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# instance fields
.field private final _predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Counta$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 2
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Counta$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-object v0
.end method

.method public static subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta;

    sget-object v1, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Counta;-><init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    array-length p2, p1

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    .line 2
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_0
    const/16 p3, 0x1e

    if-le p2, p3, :cond_1

    .line 3
    sget-object p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p0

    :cond_1
    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge p3, p2, :cond_2

    .line 4
    aget-object v1, p1, p3

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double p1, v0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0
.end method
