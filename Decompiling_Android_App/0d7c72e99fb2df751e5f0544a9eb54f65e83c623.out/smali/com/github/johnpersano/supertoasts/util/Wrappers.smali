.class public Lcom/github/johnpersano/supertoasts/util/Wrappers;
.super Ljava/lang/Object;
.source "Wrappers.java"


# instance fields
.field private onClickWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private onDismissWrapperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onClickWrapperList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onDismissWrapperList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;)V
    .locals 1
    .param p1, "onClickWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onClickWrapperList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public add(Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;)V
    .locals 1
    .param p1, "onDismissWrapper"    # Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onDismissWrapperList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public getOnClickWrappers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/johnpersano/supertoasts/util/OnClickWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onClickWrapperList:Ljava/util/List;

    return-object v0
.end method

.method public getOnDismissWrappers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/johnpersano/supertoasts/util/OnDismissWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/util/Wrappers;->onDismissWrapperList:Ljava/util/List;

    return-object v0
.end method
