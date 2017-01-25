.class public Lcom/eventgenie/android/utils/help/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# static fields
.field private static final FORCE_EXECUTOR_API:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation

    .prologue
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;**>;"
    const/4 v1, 0x0

    .line 49
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)",
            "Landroid/os/AsyncTask",
            "<TT;**>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    .local p1, "args":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    goto :goto_0
.end method
