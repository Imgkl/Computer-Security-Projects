.class public abstract Lorg/apache/ignite/internal/client/util/GridClientUtils;
.super Ljava/lang/Object;
.source "GridClientUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/client/util/GridClientUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/client/util/GridClientUtils;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs applyFilter(Ljava/lang/Iterable;[Lorg/apache/ignite/internal/client/GridClientPredicate;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;[",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<-TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "filters":[Lorg/apache/ignite/internal/client/GridClientPredicate;, "[Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    sget-boolean v8, Lorg/apache/ignite/internal/client/util/GridClientUtils;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 90
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 92
    .local v7, "res":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "e":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 95
    .local v0, "add":Z
    move-object v1, p1

    .local v1, "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v3, v1, v5

    .line 96
    .local v3, "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/client/GridClientPredicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 97
    const/4 v0, 0x0

    .line 102
    .end local v3    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    :cond_2
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .restart local v3    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "add":Z
    .end local v1    # "arr$":[Lorg/apache/ignite/internal/client/GridClientPredicate;
    .end local v2    # "e":Ljava/lang/Object;, "TT;"
    .end local v3    # "filter":Lorg/apache/ignite/internal/client/GridClientPredicate;, "Lorg/apache/ignite/internal/client/GridClientPredicate<-TT;>;"
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_4
    return-object v7
.end method

.method public static closeQuiet(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 40
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contains(Ljava/util/Collection;)Lorg/apache/ignite/internal/client/GridClientPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Lorg/apache/ignite/internal/client/GridClientPredicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Lorg/apache/ignite/internal/client/util/GridClientUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/client/util/GridClientUtils$1;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static first(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "c":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v1, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static restAvailable(Lorg/apache/ignite/internal/client/GridClientNode;Lorg/apache/ignite/internal/client/GridClientProtocol;)Z
    .locals 2
    .param p0, "node"    # Lorg/apache/ignite/internal/client/GridClientNode;
    .param p1, "p"    # Lorg/apache/ignite/internal/client/GridClientProtocol;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-interface {p0, p1, v0}, Lorg/apache/ignite/internal/client/GridClientNode;->availableAddresses(Lorg/apache/ignite/internal/client/GridClientProtocol;Z)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static safeAbs(I)I
    .locals 0
    .param p0, "i"    # I

    .prologue
    .line 167
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 169
    if-gez p0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "i":I
    :cond_0
    return p0
.end method

.method public static shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;)V
    .locals 5
    .param p1, "exec"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "log"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/logging/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "owner":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 130
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runnable tasks outlived thread pool executor service [owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lorg/apache/ignite/internal/client/util/GridClientUtils;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tasks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 137
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_1
    :goto_0
    return-void

    .line 139
    .restart local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v2, "Got interrupted while waiting for executor service to stop."

    invoke-virtual {p2, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 142
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
