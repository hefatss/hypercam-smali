.class public Ln/a/a/c/u1/e$h;
.super Ln/a/a/c/u1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln/a/a/c/u1/e;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ln/a/a/c/u1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln/a/a/c/u1/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final m:J = 0x1L


# instance fields
.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic s:Ln/a/a/c/u1/e;


# direct methods
.method public constructor <init>(Ln/a/a/c/u1/e;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/a/a/c/u1/e$h;->s:Ln/a/a/c/u1/e;

    iput-object p3, p0, Ln/a/a/c/u1/e$h;->n:Ljava/lang/Object;

    iput-object p4, p0, Ln/a/a/c/u1/e$h;->p:Ljava/lang/Object;

    invoke-direct {p0, p2}, Ln/a/a/c/u1/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ln/a/a/c/u1/e$h;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ln/a/a/c/u1/e$h;->p:Ljava/lang/Object;

    return-object p0
.end method
