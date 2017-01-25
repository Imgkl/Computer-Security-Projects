.class public abstract Lcom/github/ignition/core/tasks/IgnitedAsyncTask;
.super Landroid/os/AsyncTask;
.source "IgnitedAsyncTask.java"

# interfaces
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContextT:",
        "Landroid/content/Context;",
        "ParameterT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParameterT;TProgressT;TReturnT;>;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler",
        "<TContextT;TProgressT;TReturnT;>;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
        "<TProgressT;TReturnT;>;"
    }
.end annotation


# instance fields
.field private callable:Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable",
            "<TContextT;TParameterT;TProgressT;TReturnT;>;"
        }
    .end annotation
.end field

.field protected cancelOnActivityBack:Z

.field private volatile context:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContextT;"
        }
    .end annotation
.end field

.field private contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
            "<TProgressT;TReturnT;>;"
        }
    .end annotation
.end field

.field private delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler",
            "<TContextT;TProgressT;TReturnT;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->cancelOnActivityBack:Z

    .line 63
    return-void
.end method

.method private handleTaskCompleted(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    .line 320
    .local v0, "eventHandled":Z
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    invoke-interface {v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;->onTaskCompleted(Ljava/lang/Object;)Z

    move-result v0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 327
    :cond_1
    if-nez v0, :cond_2

    .line 328
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 331
    :cond_2
    if-nez v0, :cond_3

    .line 332
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskCompleted(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    return-void
.end method

.method private handleTaskFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 355
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    const/4 v0, 0x0

    .line 356
    .local v0, "eventHandled":Z
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    invoke-interface {v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;->onTaskFailed(Ljava/lang/Exception;)Z

    move-result v0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->onTaskFailed(Landroid/content/Context;Ljava/lang/Exception;)Z

    move-result v0

    .line 363
    :cond_1
    if-nez v0, :cond_2

    .line 364
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskFailed(Landroid/content/Context;Ljava/lang/Exception;)Z

    move-result v0

    .line 367
    :cond_2
    if-nez v0, :cond_3

    .line 368
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskFailed(Ljava/lang/Exception;)Z

    .line 370
    :cond_3
    return-void
.end method

.method private handleTaskSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    .line 338
    .local v0, "eventHandled":Z
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    invoke-interface {v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;->onTaskSuccess(Ljava/lang/Object;)Z

    move-result v0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 345
    :cond_1
    if-nez v0, :cond_2

    .line 346
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 349
    :cond_2
    if-nez v0, :cond_3

    .line 350
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskSuccess(Ljava/lang/Object;)Z

    .line 352
    :cond_3
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    .line 94
    instance-of v0, p1, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 95
    check-cast v0, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    iput-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    invoke-interface {v0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->setContext(Landroid/content/Context;)V

    .line 102
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iput-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    goto :goto_0
.end method

.method public connect(Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler",
            "<TContextT;TProgressT;TReturnT;>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "handler":Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler<TContextT;TProgressT;TReturnT;>;"
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    .line 113
    invoke-interface {p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->connect(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    .line 124
    iput-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 127
    iput-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    invoke-interface {v0, v1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParameterT;)TReturnT;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParameterT;"
    const/4 v1, 0x0

    .line 273
    .local v1, "result":Ljava/lang/Object;, "TReturnT;"
    :try_start_0
    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->callable:Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->callable:Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;

    invoke-interface {v2, p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;->call(Lcom/github/ignition/core/tasks/IgnitedAsyncTask;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .end local v1    # "result":Ljava/lang/Object;, "TReturnT;"
    :goto_0
    return-object v1

    .line 276
    .restart local v1    # "result":Ljava/lang/Object;, "TReturnT;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->run([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->error:Ljava/lang/Exception;

    goto :goto_0
.end method

.method public failed()Z
    .locals 1

    .prologue
    .line 459
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContextT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getContextHandler()Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
            "<TProgressT;TReturnT;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    return-object v0
.end method

.method public getDelegateHandler()Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler",
            "<TContextT;TProgressT;TReturnT;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    return-object v0
.end method

.method public isCancelOnActivityBack()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iget-boolean v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->cancelOnActivityBack:Z

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 480
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    invoke-virtual {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPending()Z
    .locals 2

    .prologue
    .line 466
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    invoke-virtual {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 473
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    invoke-virtual {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "result":Ljava/lang/Object;, "TReturnT;"
    invoke-direct {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->handleTaskCompleted(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->failed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->error:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->handleTaskFailed(Ljava/lang/Exception;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->handleTaskSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 173
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "eventHandled":Z
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    invoke-interface {v1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;->onTaskStarted()Z

    move-result v0

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->onTaskStarted(Landroid/content/Context;)Z

    move-result v0

    .line 181
    :cond_1
    if-nez v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskStarted(Landroid/content/Context;)Z

    move-result v0

    .line 185
    :cond_2
    if-nez v0, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskStarted()Z

    .line 188
    :cond_3
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgressT;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgressT;"
    const/4 v0, 0x0

    .line 220
    .local v0, "eventHandled":Z
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->contextHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;

    invoke-interface {v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;->onTaskProgress([Ljava/lang/Object;)Z

    move-result v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->delegateHandler:Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;

    iget-object v2, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTaskHandler;->onTaskProgress(Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :cond_1
    if-nez v0, :cond_2

    .line 228
    iget-object v1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskProgress(Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result v0

    .line 231
    :cond_2
    if-nez v0, :cond_3

    .line 232
    invoke-virtual {p0, p1}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->onTaskProgress([Ljava/lang/Object;)Z

    .line 234
    :cond_3
    return-void
.end method

.method public onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;TReturnT;)Z"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskCompleted(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)Z"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "result":Ljava/lang/Object;, "TReturnT;"
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
    .line 439
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskFailed(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 452
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
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
    .line 249
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "progress":[Ljava/lang/Object;, "[TProgressT;"
    const/4 v0, 0x0

    return v0
.end method

.method public varargs onTaskProgress([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgressT;)Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "progress":[Ljava/lang/Object;, "[TProgressT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskStarted()Z
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
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
    .line 200
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
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
    .line 412
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    .local p2, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskSuccess(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReturnT;)Z"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "result":Ljava/lang/Object;, "TReturnT;"
    const/4 v0, 0x0

    return v0
.end method

.method public varargs run([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParameterT;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParameterT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallable(Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable",
            "<TContextT;TParameterT;TProgressT;TReturnT;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "callable":Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->callable:Lcom/github/ignition/core/tasks/IgnitedAsyncTask$IgnitedAsyncTaskCallable;

    .line 492
    return-void
.end method

.method public setCancelOnActivityBack(Z)V
    .locals 0
    .param p1, "cancelOnActivityBack"    # Z

    .prologue
    .line 66
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    iput-boolean p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->cancelOnActivityBack:Z

    .line 67
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContextT;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/github/ignition/core/tasks/IgnitedAsyncTask;, "Lcom/github/ignition/core/tasks/IgnitedAsyncTask<TContextT;TParameterT;TProgressT;TReturnT;>;"
    .local p1, "context":Landroid/content/Context;, "TContextT;"
    iput-object p1, p0, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;->context:Landroid/content/Context;

    .line 150
    return-void
.end method
