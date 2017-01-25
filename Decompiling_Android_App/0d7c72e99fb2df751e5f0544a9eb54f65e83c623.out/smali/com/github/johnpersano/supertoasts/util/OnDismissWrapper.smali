.class public Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;
.super Ljava/lang/Object;
.source "OnDismissWrapper.java"

# interfaces
.implements Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;


# instance fields
.field private final mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "onDismissListener"    # Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->mTag:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    .line 43
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;->mOnDismissListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;

    invoke-interface {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperToast$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 62
    return-void
.end method
