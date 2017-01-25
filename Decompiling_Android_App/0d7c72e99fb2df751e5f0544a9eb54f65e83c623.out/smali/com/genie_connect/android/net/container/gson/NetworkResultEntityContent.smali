.class public Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
.super Lcom/genie_connect/common/net/container/NetworkResultGm;
.source "NetworkResultEntityContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/genie_connect/common/net/container/NetworkResultGm;"
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/net/utils/HttpAction;)V
    .locals 0
    .param p1, "action"    # Lcom/genie_connect/common/net/utils/HttpAction;

    .prologue
    .line 45
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;, "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent<TT;>;"
    invoke-direct {p0, p1}, Lcom/genie_connect/common/net/container/NetworkResultGm;-><init>(Lcom/genie_connect/common/net/utils/HttpAction;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;, "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent<TT;>;"
    iget-object v0, p0, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->mContent:Ljava/lang/Object;

    return-object v0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;, "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent<TT;>;"
    .local p1, "content":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->mContent:Ljava/lang/Object;

    .line 52
    return-void
.end method
