.class public Lmiuix/pickerwidget/widget/NumberPicker$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$i;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$i;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$i;->a:I

    invoke-static {p0, p1}, Lk/v/d/a/a;->c(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
