.class public final synthetic Ld/j/b/i/e/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic c:Ld/j/b/i/e/c/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld/j/b/i/e/c/d;

    invoke-direct {v0}, Ld/j/b/i/e/c/d;-><init>()V

    sput-object v0, Ld/j/b/i/e/c/d;->c:Ld/j/b/i/e/c/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    check-cast p2, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->lambda$getSortedCustomAttributes$0(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;)I

    move-result p0

    return p0
.end method
