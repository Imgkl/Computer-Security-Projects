.class Lcom/github/johnpersano/supertoasts/SuperCardToast$5;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissWithAnimation()V
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
    .line 945
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$5;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 950
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 953
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 954
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$5;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$300(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 964
    :goto_0
    return-void

    .line 959
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 960
    .restart local v0    # "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$5;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$100(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 971
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 978
    return-void
.end method
