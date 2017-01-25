.class public abstract Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;
.super Ljava/lang/Object;
.source "IgnitedAsyncTaskDefaultHandler.java"

# interfaces
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContextT:",
        "Landroid/content/Context;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler",
        "<TContextT;TProgressT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContextT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContextT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;TReturnT;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskFailed(Landroid/content/Context;Ljava/lang/Exception;)Z
    .locals 1
    .param p2, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;",
            "Ljava/lang/Exception;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    const/4 v0, 0x0

    return v0
.end method

.method public varargs onTaskProgress(Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;[TProgressT;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "progress":[Ljava/lang/Object;, "[TProgressT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskStarted(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;TReturnT;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler<TContextT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskDefaultHandler;->context:Landroid/content/Context;

    .line 34
    return-void
.end method
