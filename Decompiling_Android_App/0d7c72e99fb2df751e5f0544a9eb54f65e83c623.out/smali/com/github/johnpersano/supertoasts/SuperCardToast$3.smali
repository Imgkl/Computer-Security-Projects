.class Lcom/github/johnpersano/supertoasts/SuperCardToast$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperCardToast.java"


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


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V
    .locals 0

    .prologue
    .line 891
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$3;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 896
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 897
    .local v0, "mHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$3;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$100(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    return-void
.end method
