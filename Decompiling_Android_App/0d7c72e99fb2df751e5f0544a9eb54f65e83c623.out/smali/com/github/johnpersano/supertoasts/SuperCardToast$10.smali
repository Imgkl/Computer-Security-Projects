.class Lcom/github/johnpersano/supertoasts/SuperCardToast$10;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperCardToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

.field timesTouched:I


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V
    .locals 0

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1978
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;->timesTouched:I

    if-nez v0, :cond_0

    .line 1980
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1982
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismiss()V

    .line 1988
    :cond_0
    iget v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;->timesTouched:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$10;->timesTouched:I

    .line 1990
    const/4 v0, 0x0

    return v0
.end method
