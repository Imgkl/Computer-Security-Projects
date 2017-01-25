.class Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;
.super Ljava/lang/Object;
.source "SwipeDismissListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;->this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;->this$0:Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;

    # getter for: Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;->access$100(Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/util/SwipeDismissListener$3;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void
.end method
