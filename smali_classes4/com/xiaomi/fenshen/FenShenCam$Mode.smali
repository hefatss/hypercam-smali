.class public final enum Lcom/xiaomi/fenshen/FenShenCam$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/fenshen/FenShenCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/fenshen/FenShenCam$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

.field public static final enum VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->PHOTO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    .line 2
    new-instance v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/fenshen/FenShenCam$Mode;->VIDEO:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    .line 3
    new-instance v3, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v5, "MCOPY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/fenshen/FenShenCam$Mode;->MCOPY:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    .line 4
    new-instance v5, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const-string v7, "TIMEFREEZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/fenshen/FenShenCam$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/fenshen/FenShenCam$Mode;->TIMEFREEZE:Lcom/xiaomi/fenshen/FenShenCam$Mode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaomi/fenshen/FenShenCam$Mode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/xiaomi/fenshen/FenShenCam$Mode;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/fenshen/FenShenCam$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/fenshen/FenShenCam$Mode;->$VALUES:[Lcom/xiaomi/fenshen/FenShenCam$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/fenshen/FenShenCam$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/fenshen/FenShenCam$Mode;

    return-object v0
.end method
