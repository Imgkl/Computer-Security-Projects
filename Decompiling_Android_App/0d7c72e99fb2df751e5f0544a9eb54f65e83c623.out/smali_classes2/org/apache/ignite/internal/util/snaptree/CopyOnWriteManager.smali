.class public abstract Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
.super Ljava/lang/Object;
.source "CopyOnWriteManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$1;,
        Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;,
        Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BULK_READ:I = 0x3

.field private static final BULK_READ_AFTER_FREEZE:I = 0x4

.field private static final MUTATE:I = 0x1

.field private static final MUTATE_AFTER_FREEZE:I = 0x2


# instance fields
.field private volatile _active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 221
    return-void
.end method

.method static synthetic access$002(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    return-object p1
.end method

.method private begin(Z)Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .locals 3
    .param p1, "mutation"    # Z

    .prologue
    .line 287
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 288
    .local v0, "active":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iget-boolean v2, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    if-ne v2, p1, :cond_0

    .line 289
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v1

    .line 290
    .local v1, "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    if-eqz v1, :cond_0

    .line 294
    .end local v1    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->begin(ZLorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v1

    goto :goto_0
.end method

.method private begin(ZLorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .locals 5
    .param p1, "mutation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;)",
            "Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    .local p2, "epoch":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :goto_0
    iget-object v4, p2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 300
    .local v2, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    if-nez v2, :cond_1

    .line 301
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;ZLorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$1;)V

    .line 302
    .local v0, "newEpoch":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v1

    .line 303
    .local v1, "newTicket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    invoke-virtual {p2, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptInstallSuccessor(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->awaitActivated()V

    .line 318
    .end local v0    # "newEpoch":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .end local v1    # "newTicket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :goto_1
    return-object v1

    .line 310
    .restart local v0    # "newEpoch":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .restart local v1    # "newTicket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :cond_0
    iget-object v4, p2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    check-cast v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 314
    .end local v0    # "newEpoch":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .end local v1    # "newTicket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .restart local v2    # "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :cond_1
    iget-boolean v4, v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    if-ne v4, p1, :cond_2

    .line 315
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v3

    .line 316
    .local v3, "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    if-eqz v3, :cond_2

    .line 317
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->awaitActivated()V

    move-object v1, v3

    .line 318
    goto :goto_1

    .line 322
    .end local v3    # "ticket":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    :cond_2
    move-object p2, v2

    .line 323
    goto :goto_0
.end method

.method private createNewEpoch(Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    .local p1, "f":Ljava/lang/Object;, "TE;"
    .local p2, "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->cloneFrozen(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 260
    return-void
.end method


# virtual methods
.method public availableFrozen()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getFrozenValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public beginMutation()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->begin(Z)Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v0

    return-object v0
.end method

.method public beginQuiescent()Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    .locals 1

    .prologue
    .line 283
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->begin(Z)Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->clone()Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .local v1, "copy":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 242
    .local v0, "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getFrozenValue()Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, "f":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v2, :cond_1

    .line 244
    const/4 v5, 0x1

    iput-boolean v5, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->freezeRequested:Z

    .line 245
    iget-boolean v5, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getOrCreateSuccessor(Z)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    move-result-object v3

    .line 246
    .local v3, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->awaitActivated()V

    .line 247
    iget-object v5, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    iget-object v6, v3, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    .line 248
    iget-object v2, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    .line 250
    :cond_0
    move-object v0, v3

    .line 251
    goto :goto_0

    .line 237
    .end local v0    # "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .end local v1    # "copy":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    .end local v2    # "f":Ljava/lang/Object;, "TE;"
    .end local v3    # "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :catch_0
    move-exception v4

    .line 238
    .local v4, "xx":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/Error;

    const-string v6, "unexpected"

    invoke-direct {v5, v6, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 253
    .end local v4    # "xx":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .restart local v1    # "copy":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    .restart local v2    # "f":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->createNewEpoch(Ljava/lang/Object;Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)V

    .line 254
    return-object v1
.end method

.method protected abstract cloneFrozen(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method protected abstract freezeAndClone(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public frozen()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 343
    .local v0, "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getFrozenValue()Ljava/lang/Object;

    move-result-object v1

    .line 344
    .local v1, "f":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v1, :cond_1

    .line 345
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->freezeRequested:Z

    .line 346
    iget-boolean v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getOrCreateSuccessor(Z)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    move-result-object v2

    .line 347
    .local v2, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->awaitActivated()V

    .line 348
    iget-object v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    iget-object v4, v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 349
    iget-object v1, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    .line 351
    :cond_0
    move-object v0, v2

    .line 352
    goto :goto_0

    .line 353
    .end local v2    # "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :cond_1
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 369
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public read()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    iget-object v0, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public size()I
    .locals 5

    .prologue
    .line 379
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 380
    .local v0, "a":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptDataSum()Ljava/lang/Integer;

    move-result-object v1

    .line 381
    .local v1, "delta":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 382
    iget v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 388
    :goto_0
    return v3

    .line 386
    :cond_0
    iget-boolean v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->getOrCreateSuccessor(Z)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    move-result-object v2

    .line 387
    .local v2, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->awaitActivated()V

    .line 388
    iget v3, v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    goto :goto_0
.end method
