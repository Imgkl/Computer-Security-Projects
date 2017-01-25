.class public Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;
.super Ljava/lang/Object;
.source "GridUnsafeGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;,
        Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final currOp:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final head:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final tail:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    .line 57
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->tail:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;)V

    .line 70
    .local v0, "fake":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->allowDeallocate()V
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    .line 72
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->tail:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 332
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 82
    .local v0, "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    if-eqz v0, :cond_0

    .line 83
    # operator++ for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I
    invoke-static {v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$208(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .end local v0    # "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;-><init>(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;)V

    .line 90
    .restart local v0    # "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 95
    .local v1, "prev":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->previous(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$300(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    .line 97
    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V
    invoke-static {v1, v0}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$400(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    goto :goto_0
.end method

.method public end()V
    .locals 8

    .prologue
    .line 109
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 111
    .local v1, "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "must be called after begin in the same thread"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 113
    :cond_0
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    sget-boolean v4, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    move-result v4

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$200(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(I)V

    throw v4

    .line 116
    :cond_1
    # operator-- for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->reentries:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$210(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    .line 151
    :cond_2
    :goto_0
    return-void

    .line 121
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 123
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->allowDeallocate()V
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    .line 126
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->tail:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    check-cast v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 131
    .restart local v1    # "op":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    :goto_1
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->state:I
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$500(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)I

    move-result v2

    .local v2, "state":I
    if-eqz v2, :cond_5

    .line 132
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 133
    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->finish()V
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$600(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)V

    .line 136
    :cond_4
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->next:Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$700(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    move-result-object v0

    .line 138
    .local v0, "next":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    if-nez v0, :cond_6

    .line 146
    .end local v0    # "next":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    :cond_5
    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->tail:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    .line 148
    .local v3, "t":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->id:J
    invoke-static {v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)J

    move-result-wide v4

    # getter for: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->id:J
    invoke-static {v3}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$800(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->tail:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 141
    .end local v3    # "t":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    .restart local v0    # "next":Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;
    :cond_6
    move-object v1, v0

    .line 142
    goto :goto_1
.end method

.method public finalizeLater(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "finalizer"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must be called in begin-end block"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    new-instance v1, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;-><init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$1;)V

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$1100(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Finalizer;)V

    .line 176
    return-void
.end method

.method public releaseLater(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    .locals 2
    .param p1, "compound"    # Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;

    .prologue
    .line 160
    sget-boolean v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must be called in begin-end block"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->head:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;

    # invokes: Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->add(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;->access$900(Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard$Operation;Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeCompoundMemory;)V

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    const-class v0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;

    const-string v1, "currOp"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/offheap/unsafe/GridUnsafeGuard;->currOp:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
