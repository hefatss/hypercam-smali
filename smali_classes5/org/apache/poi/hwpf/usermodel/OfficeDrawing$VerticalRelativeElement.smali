.class public final enum Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hwpf/usermodel/OfficeDrawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerticalRelativeElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

.field public static final enum LINE:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

.field public static final enum MARGIN:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

.field public static final enum PAGE:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

.field public static final enum TEXT:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    const-string v1, "LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->LINE:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    new-instance v1, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    const-string v3, "MARGIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->MARGIN:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    const-string v5, "PAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->PAGE:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    new-instance v5, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    const-string v7, "TEXT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->TEXT:Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->$VALUES:[Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->$VALUES:[Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    invoke-virtual {v0}, [Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwpf/usermodel/OfficeDrawing$VerticalRelativeElement;

    return-object v0
.end method
