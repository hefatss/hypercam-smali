.class public Ld/d/b/e4/m$a;
.super Ld/d/b/e4/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/d/b/e4/m;->k1()Ld/d/b/e4/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/d/b/e4/m;


# direct methods
.method public constructor <init>(Ld/d/b/e4/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/d/b/e4/m$a;->a:Ld/d/b/e4/m;

    invoke-direct {p0}, Ld/d/b/e4/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/hardware/camera2/CameraCaptureSession;Ld/o/f/i/a0;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "taskData",
            "request",
            "timestamp",
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ld/o/f/i/a0;->s()Ld/o/f/i/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ld/o/f/i/a0;->X()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Ld/d/b/e4/m$a;->a:Ld/d/b/e4/m;

    iget-object p3, p3, Ld/d/b/e4/a;->I:Ld/d/b/u5;

    iget-object p3, p3, Ld/d/b/u5;->g:Ld/d/b/u5$b;

    iget p3, p3, Ld/d/b/u5$b;->t:I

    invoke-virtual {p2, p3}, Ld/o/f/i/a0;->A0(I)V

    .line 4
    invoke-virtual {p1}, Ld/o/f/i/b0;->q0()Ld/o/f/i/d0;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Ld/o/f/i/d0;->K(Z)V

    .line 6
    iget-object p0, p0, Ld/d/b/e4/m$a;->a:Ld/d/b/e4/m;

    iget-object p0, p0, Ld/d/b/e4/a;->I:Ld/d/b/u5;

    iget-object p0, p0, Ld/d/b/u5;->g:Ld/d/b/u5$b;

    iget-object p0, p0, Ld/d/b/u5$b;->o:[I

    invoke-virtual {p1, p0}, Ld/o/f/i/d0;->L([I)V

    :cond_0
    return-void
.end method