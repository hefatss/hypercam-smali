.class public final Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;
.super Ljava/text/Format;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/DataFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipPlusFourFormat"
.end annotation


# static fields
.field private static final df:Ljava/text/DecimalFormat;

.field public static final instance:Ljava/text/Format;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    const-string v0, "000000000"

    .line 2
    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method public static format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0, p1, p2}, Ljava/text/DecimalFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
