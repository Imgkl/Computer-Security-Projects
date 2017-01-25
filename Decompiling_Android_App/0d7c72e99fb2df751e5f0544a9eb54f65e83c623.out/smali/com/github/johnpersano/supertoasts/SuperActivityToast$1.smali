.class Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperActivityToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/SuperActivityToast;

.field timesTouched:I


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast;)V
    .locals 0

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;->this$0:Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1485
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;->timesTouched:I

    if-nez v0, :cond_0

    .line 1487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;->this$0:Lcom/github/johnpersano/supertoasts/SuperActivityToast;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperActivityToast;->dismiss()V

    .line 1495
    :cond_0
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;->timesTouched:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$1;->timesTouched:I

    .line 1497
    const/4 v0, 0x0

    return v0
.end method
