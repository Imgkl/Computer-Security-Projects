.class Lcom/github/johnpersano/supertoasts/SuperCardToast$11;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1997
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$600(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$600(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;
    invoke-static {v1}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$700(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->onClick(Landroid/view/View;Landroid/os/Parcelable;)V

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismiss()V

    .line 2011
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$11;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    # getter for: Lcom/github/johnpersano/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->access$800(Lcom/github/johnpersano/supertoasts/SuperCardToast;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2013
    return-void
.end method
