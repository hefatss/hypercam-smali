.class public final synthetic Ld/o/f/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Ld/o/f/l/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/o/f/l/a;

    invoke-direct {v0}, Ld/o/f/l/a;-><init>()V

    sput-object v0, Ld/o/f/l/a;->a:Ld/o/f/l/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/xiaomi/camera/imagecodec/CaptureRequestVendorTags;->lambda$static$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
