.class public final Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;
.super Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.source "SourceFile"


# static fields
.field public static final SIZE:I = 0x1

.field public static final instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

.field public static final sid:B = 0xct


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfOperands()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSid()B
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public toFormulaString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ">="

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
