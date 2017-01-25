.class Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;
.super Lorg/apache/ignite/internal/util/snaptree/EpochNode;
.source "CopyOnWriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COWEpoch"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final _activated:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.",
            "Latch;"
        }
    .end annotation
.end field

.field private volatile _frozenValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile dirty:Z

.field freezeRequested:Z

.field initialSize:I

.field final mutationAllowed:Z

.field final successorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;>;"
        }
    .end annotation
.end field

.field successorTicket:Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .param p4, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    .local p3, "frozenValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 121
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;-><init>()V

    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance v1, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    invoke-direct {v1, p1, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_activated:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    .line 123
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    .line 124
    iput-object p2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    .line 125
    iput p4, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    .line 126
    iput-object p3, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    .line 127
    if-nez p3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    .line 128
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V
    .locals 2
    .param p2, "mutationAllowed"    # Z

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    new-instance v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_activated:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    .line 118
    iput-boolean p2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->mutationAllowed:Z

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;ZLorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$1;

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V

    return-void
.end method

.method private setFrozenValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .local p1, "v":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-nez v0, :cond_0

    .line 146
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    .line 147
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 137
    .local v0, "ticket":Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    .line 139
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    .line 141
    :cond_0
    return-object v0
.end method

.method attemptInitialArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-super {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;->attemptArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    return-object v0
.end method

.method public attemptInstallSuccessor(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    .local p1, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptInitialArrive()Lorg/apache/ignite/internal/util/snaptree/EpochNode;

    move-result-object v0

    .line 202
    .local v0, "t":Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iput-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorTicket:Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    .line 204
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->beginClose()V

    .line 205
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public awaitActivated()V
    .locals 2

    .prologue
    .line 183
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_activated:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->acquireShared(I)V

    .line 184
    return-void
.end method

.method getFrozenValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    .line 155
    .local v0, "v":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "v":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v0
.end method

.method public getOrCreateSuccessor(Z)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;
    .locals 3
    .param p1, "preferredMutation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager",
            "<TE;>.COWEpoch;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 188
    .local v0, "existing":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    if-eqz v0, :cond_0

    .line 197
    .end local v0    # "existing":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :goto_0
    return-object v0

    .line 192
    .restart local v0    # "existing":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    invoke-direct {v1, v2, p1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;-><init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V

    .line 193
    .local v1, "repl":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->attemptInstallSuccessor(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    move-object v0, v2

    goto :goto_0
.end method

.method protected onClosed(I)V
    .locals 4
    .param p1, "dataSum"    # I

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    const/4 v3, 0x1

    .line 159
    sget-boolean v1, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 162
    .local v0, "succ":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.COWEpoch;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->freezeRequested:Z

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->freezeAndClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->setFrozenValue(Ljava/lang/Object;)V

    .line 175
    :goto_0
    iget v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    add-int/2addr v1, p1

    iput v1, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->initialSize:I

    .line 177
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    # setter for: Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->_active:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;->access$002(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;)Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;

    .line 178
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->successorTicket:Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Ticket;->leave(I)V

    .line 179
    iget-object v1, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_activated:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;

    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->releaseShared(I)Z

    .line 180
    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->value:Ljava/lang/Object;

    .line 168
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    if-eqz v1, :cond_2

    .line 169
    iput-boolean v3, v0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->dirty:Z

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->_frozenValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$COWEpoch;->setFrozenValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
