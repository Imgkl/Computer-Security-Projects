.class Lcom/github/johnpersano/supertoasts/SuperCardToast$9;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$500(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$9;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$500(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 1582
    :cond_0
    return-void
.end method
