.class public final synthetic Ld/d/a/t6/z4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ld/d/a/t6/z4/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/d/a/t6/z4/b;

    invoke-direct {v0}, Ld/d/a/t6/z4/b;-><init>()V

    sput-object v0, Ld/d/a/t6/z4/b;->a:Ld/d/a/t6/z4/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ld/d/a/l7/g/p2;

    invoke-static {p1}, Lcom/android/camera/fragment/modeselector/FragmentModeSelector;->Hc(Ld/d/a/l7/g/p2;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method