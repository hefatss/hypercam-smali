.class public abstract Lokhttp3/internal/http2/Http2Connection$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Listener$Companion;
    }
.end annotation

.annotation runtime Lh/i0;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Connection$Listener;",
        "",
        "()V",
        "onSettings",
        "",
        "connection",
        "Lokhttp3/internal/http2/Http2Connection;",
        "settings",
        "Lokhttp3/internal/http2/Settings;",
        "onStream",
        "stream",
        "Lokhttp3/internal/http2/Http2Stream;",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Http2Connection$Listener$Companion;
    .annotation build Ln/d/a/d;
    .end annotation
.end field

.field public static final REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;
    .annotation build Lh/d3/e;
    .end annotation

    .annotation build Ln/d/a/d;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Listener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Connection$Listener$Companion;-><init>(Lh/d3/x/w;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection$Listener;->Companion:Lokhttp3/internal/http2/Http2Connection$Listener$Companion;

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1;

    invoke-direct {v0}, Lokhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V
    .locals 0
    .param p1    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param

    const-string p0, "connection"

    invoke-static {p1, p0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settings"

    invoke-static {p2, p0}, Lh/d3/x/l0;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .param p1    # Lokhttp3/internal/http2/Http2Stream;
        .annotation build Ln/d/a/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
