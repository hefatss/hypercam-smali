.class public final synthetic Ld/d/g/d/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# instance fields
.field public final synthetic a:Ld/d/g/d/w;


# direct methods
.method public synthetic constructor <init>(Ld/d/g/d/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/d/g/d/o;->a:Ld/d/g/d/w;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 0

    iget-object p0, p0, Ld/d/g/d/o;->a:Ld/d/g/d/w;

    invoke-virtual {p0, p1}, Ld/d/g/d/w;->r(Lio/reactivex/FlowableEmitter;)V

    return-void
.end method
