.class public final enum Lorg/apache/poi/ss/usermodel/PaperSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/PaperSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A3_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A4_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum A5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum B4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum B5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum EXECUTIVE_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum FOLIO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LEDGER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LEGAL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LETTER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum LETTER_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum QUARTO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STANDARD_PAPER_10_14:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STANDARD_PAPER_11_17:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum STATEMENT_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

.field public static final enum TABLOID_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v1, "LETTER_PAPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 2
    new-instance v1, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v3, "LETTER_SMALL_PAPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/ss/usermodel/PaperSize;->LETTER_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 3
    new-instance v3, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v5, "TABLOID_PAPER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/ss/usermodel/PaperSize;->TABLOID_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 4
    new-instance v5, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v7, "LEDGER_PAPER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/ss/usermodel/PaperSize;->LEDGER_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 5
    new-instance v7, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v9, "LEGAL_PAPER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/PaperSize;->LEGAL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 6
    new-instance v9, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v11, "STATEMENT_PAPER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/ss/usermodel/PaperSize;->STATEMENT_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 7
    new-instance v11, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v13, "EXECUTIVE_PAPER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/ss/usermodel/PaperSize;->EXECUTIVE_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 8
    new-instance v13, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v15, "A3_PAPER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/ss/usermodel/PaperSize;->A3_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 9
    new-instance v15, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v14, "A4_PAPER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 10
    new-instance v14, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v12, "A4_SMALL_PAPER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/ss/usermodel/PaperSize;->A4_SMALL_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 11
    new-instance v12, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v10, "A5_PAPER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/ss/usermodel/PaperSize;->A5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 12
    new-instance v10, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v8, "B4_PAPER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/ss/usermodel/PaperSize;->B4_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 13
    new-instance v8, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v6, "B5_PAPER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/ss/usermodel/PaperSize;->B5_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 14
    new-instance v6, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v4, "FOLIO_PAPER"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/PaperSize;->FOLIO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 15
    new-instance v4, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v2, "QUARTO_PAPER"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/ss/usermodel/PaperSize;->QUARTO_PAPER:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 16
    new-instance v2, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v6, "STANDARD_PAPER_10_14"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/ss/usermodel/PaperSize;->STANDARD_PAPER_10_14:Lorg/apache/poi/ss/usermodel/PaperSize;

    .line 17
    new-instance v6, Lorg/apache/poi/ss/usermodel/PaperSize;

    const-string v4, "STANDARD_PAPER_11_17"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/apache/poi/ss/usermodel/PaperSize;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/ss/usermodel/PaperSize;->STANDARD_PAPER_11_17:Lorg/apache/poi/ss/usermodel/PaperSize;

    const/16 v4, 0x11

    new-array v4, v4, [Lorg/apache/poi/ss/usermodel/PaperSize;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    .line 18
    sput-object v4, Lorg/apache/poi/ss/usermodel/PaperSize;->$VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/ss/usermodel/PaperSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/PaperSize;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/PaperSize;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/PaperSize;->$VALUES:[Lorg/apache/poi/ss/usermodel/PaperSize;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/PaperSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/PaperSize;

    return-object v0
.end method
