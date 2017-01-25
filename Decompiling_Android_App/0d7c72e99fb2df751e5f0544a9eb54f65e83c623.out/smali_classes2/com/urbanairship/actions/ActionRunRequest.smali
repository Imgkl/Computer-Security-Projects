.class public Lcom/urbanairship/actions/ActionRunRequest;
.super Ljava/lang/Object;
.source "ActionRunRequest.java"


# static fields
.field static executor:Ljava/util/concurrent/Executor;


# instance fields
.field private action:Lcom/urbanairship/actions/Action;

.field private actionName:Ljava/lang/String;

.field private actionValue:Lcom/urbanairship/actions/ActionValue;

.field private metadata:Landroid/os/Bundle;

.field private registry:Lcom/urbanairship/actions/ActionRegistry;

.field private situation:Lcom/urbanairship/actions/Situation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/actions/ActionRunRequest;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/urbanairship/actions/Action;)V
    .locals 0
    .param p1, "action"    # Lcom/urbanairship/actions/Action;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "registry"    # Lcom/urbanairship/actions/ActionRegistry;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 1
    .param p0, "x0"    # Lcom/urbanairship/actions/ActionRunRequest;
    .param p1, "x1"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/urbanairship/actions/ActionRunRequest;->runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method

.method private createActionArguments()Lcom/urbanairship/actions/ActionArguments;
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v0, "metadata":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 266
    const-string v1, "com.urbanairship.REGISTRY_ACTION_NAME"

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    new-instance v1, Lcom/urbanairship/actions/ActionArguments;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    iget-object v3, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v1, v2, v3, v0}, Lcom/urbanairship/actions/ActionArguments;-><init>(Lcom/urbanairship/actions/Situation;Lcom/urbanairship/actions/ActionValue;Landroid/os/Bundle;)V

    return-object v1

    .line 264
    .end local v0    # "metadata":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static createRequest(Lcom/urbanairship/actions/Action;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 2
    .param p0, "action"    # Lcom/urbanairship/actions/Action;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to run null action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Lcom/urbanairship/actions/Action;)V

    return-object v0
.end method

.method public static createRequest(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 2
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V

    return-object v0
.end method

.method public static createRequest(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "registry"    # Lcom/urbanairship/actions/ActionRegistry;

    .prologue
    .line 84
    new-instance v0, Lcom/urbanairship/actions/ActionRunRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/actions/ActionRunRequest;-><init>(Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry;)V

    return-object v0
.end method

.method private lookUpAction(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 1
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRunRequest;->registry:Lcom/urbanairship/actions/ActionRegistry;

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->getActionRegistry()Lcom/urbanairship/actions/ActionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method private runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/urbanairship/actions/ActionRunRequest;->lookUpAction(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 191
    .local v0, "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    if-nez v0, :cond_0

    .line 192
    sget-object v1, Lcom/urbanairship/actions/ActionResult$Status;->ACTION_NOT_FOUND:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    .line 202
    .end local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :goto_0
    return-object v1

    .line 193
    .restart local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getPredicate()Lcom/android/internal/util/Predicate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getPredicate()Lcom/android/internal/util/Predicate;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will not be run. Registry predicate rejected the arguments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 195
    sget-object v1, Lcom/urbanairship/actions/ActionResult$Status;->REJECTED_ARGUMENTS:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getActionForSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/Action;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/urbanairship/actions/Action;->run(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    goto :goto_0

    .line 199
    .end local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :cond_2
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->action:Lcom/urbanairship/actions/Action;

    invoke-virtual {v1, p1}, Lcom/urbanairship/actions/Action;->run(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_3
    sget-object v1, Lcom/urbanairship/actions/ActionResult$Status;->ACTION_NOT_FOUND:Lcom/urbanairship/actions/ActionResult$Status;

    invoke-static {v1}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(Lcom/urbanairship/actions/ActionResult$Status;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, v0}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V

    .line 211
    return-void
.end method

.method public run(Lcom/urbanairship/actions/ActionCompletionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/urbanairship/actions/ActionCompletionCallback;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/actions/ActionRunRequest;->run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V

    .line 220
    return-void
.end method

.method public run(Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Looper;)V
    .locals 4
    .param p1, "callback"    # Lcom/urbanairship/actions/ActionCompletionCallback;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 231
    if-nez p2, :cond_0

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 235
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/urbanairship/actions/ActionRunRequest;->createActionArguments()Lcom/urbanairship/actions/ActionArguments;

    move-result-object v0

    .line 237
    .local v0, "arguments":Lcom/urbanairship/actions/ActionArguments;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    .local v1, "handler":Landroid/os/Handler;
    sget-object v2, Lcom/urbanairship/actions/ActionRunRequest;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/urbanairship/actions/ActionRunRequest$1;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/urbanairship/actions/ActionRunRequest$1;-><init>(Lcom/urbanairship/actions/ActionRunRequest;Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionCompletionCallback;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void

    .line 232
    .end local v0    # "arguments":Lcom/urbanairship/actions/ActionArguments;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0
.end method

.method public runSync()Lcom/urbanairship/actions/ActionResult;
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/urbanairship/actions/ActionRunRequest;->createActionArguments()Lcom/urbanairship/actions/ActionArguments;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/ActionRunRequest;->runSync(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Landroid/os/Bundle;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->metadata:Landroid/os/Bundle;

    .line 159
    return-object p0
.end method

.method public setSituation(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0
    .param p1, "situation"    # Lcom/urbanairship/actions/Situation;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->situation:Lcom/urbanairship/actions/Situation;

    .line 170
    return-object p0
.end method

.method public setValue(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 0
    .param p1, "actionValue"    # Lcom/urbanairship/actions/ActionValue;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;

    .line 131
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionRunRequest;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 144
    :try_start_0
    invoke-static {p1}, Lcom/urbanairship/actions/ActionValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionValue;

    move-result-object v1

    iput-object v1, p0, Lcom/urbanairship/actions/ActionRunRequest;->actionValue:Lcom/urbanairship/actions/ActionValue;
    :try_end_0
    .catch Lcom/urbanairship/actions/ActionValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-object p0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lcom/urbanairship/actions/ActionValueException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to wrap object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as an ActionValue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
