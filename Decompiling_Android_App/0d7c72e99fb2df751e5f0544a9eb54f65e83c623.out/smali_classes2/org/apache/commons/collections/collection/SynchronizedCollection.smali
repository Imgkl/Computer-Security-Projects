.class public Lorg/apache/commons/collections/collection/SynchronizedCollection;
.super Ljava/lang/Object;
.source "SynchronizedCollection.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x217c0172bf490b22L


# instance fields
.field protected final collection:Ljava/util/Collection;

.field protected final lock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    .line 75
    iput-object p0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    .line 90
    iput-object p2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static decorate(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "coll"    # Ljava/util/Collection;

    .prologue
    .line 60
    new-instance v0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 103
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 112
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 124
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 195
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    if-ne p1, p0, :cond_0

    .line 197
    const/4 v0, 0x1

    :try_start_0
    monitor-exit v1

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 167
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 174
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 181
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "object"    # [Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
