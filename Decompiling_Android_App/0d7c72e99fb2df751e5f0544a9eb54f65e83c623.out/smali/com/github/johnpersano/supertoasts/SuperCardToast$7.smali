.class Lcom/github/johnpersano/supertoasts/SuperCardToast$7;
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
    .line 1543
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$7;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast;

    invoke-virtual {v0}, Lcom/github/johnpersano/supertoasts/SuperCardToast;->dismissImmediately()V

    .line 1550
    return-void
.end method
