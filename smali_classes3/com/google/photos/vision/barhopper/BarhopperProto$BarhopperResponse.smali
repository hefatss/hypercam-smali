.class public final Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed<",
        "Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;",
        "Lcom/google/photos/vision/barhopper/zzj;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

.field private zzi:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    const-class v1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzO()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzg:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdb;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object v0
.end method

.method public static zzb([BLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;)Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeo;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzK(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;[BLcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdo;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    check-cast p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object p0
.end method


# virtual methods
.method public final zzc()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzel;

    return-object p0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 1
    :cond_0
    iput-byte p3, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    return-object v3

    .line 2
    :cond_1
    sget-object p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzj;

    .line 3
    invoke-direct {p0, v3}, Lcom/google/photos/vision/barhopper/zzj;-><init>(Lcom/google/photos/vision/barhopper/zza;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    .line 4
    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x7

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "zzd"

    aput-object p1, p0, v0

    const-string p1, "zze"

    aput-object p1, p0, p3

    .line 5
    const-class p1, Lcom/google/photos/vision/barhopper/zzc;

    aput-object p1, p0, v4

    const-string p1, "zzf"

    aput-object p1, p0, v3

    sget-object p1, Lcom/google/photos/vision/barhopper/zzah;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    aput-object p1, p0, v2

    const-string p1, "zzg"

    aput-object p1, p0, v1

    const/4 p1, 0x6

    const-string p2, "zzh"

    aput-object p2, p0, p1

    sget-object p1, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zza:Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001\u041b\u0002\u150c\u0000\u0003\u1008\u0001\u0004\u100a\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzR(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    iget-byte p0, p0, Lcom/google/photos/vision/barhopper/BarhopperProto$BarhopperResponse;->zzi:B

    .line 6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
