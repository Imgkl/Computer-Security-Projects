.class public Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;
.super Ljava/lang/Object;
.source "OnClickWrapper.java"

# interfaces
.implements Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;


# instance fields
.field private final mOnClickListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;

.field private final mTag:Ljava/lang/String;

.field private mToken:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mTag:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mOnClickListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;

    .line 46
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mOnClickListener:Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;

    iget-object v1, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mToken:Landroid/os/Parcelable;

    invoke-interface {v0, p1, v1}, Lcom/github/johnpersano/supertoasts/SuperToast$OnClickListener;->onClick(Landroid/view/View;Landroid/os/Parcelable;)V

    .line 75
    return-void
.end method

.method public setToken(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;->mToken:Landroid/os/Parcelable;

    .line 68
    return-void
.end method
