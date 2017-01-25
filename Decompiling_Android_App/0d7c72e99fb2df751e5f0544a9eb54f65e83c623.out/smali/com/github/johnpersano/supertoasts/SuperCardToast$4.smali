.class Lcom/github/johnpersano/supertoasts/SuperCardToast$4;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissWithLayoutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$200(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 914
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$200(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$4;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    goto :goto_0
.end method
