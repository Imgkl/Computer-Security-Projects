.class Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;
.super Ljava/lang/Object;
.source "GridCircularBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridCircularBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private idx:J

.field private item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-class v0, Lorg/apache/ignite/internal/util/GridCircularBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method declared-synchronized get()Lorg/apache/ignite/internal/util/typedef/T2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/typedef/T2",
            "<TV;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/T2;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->idx:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/T2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized item()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 227
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    monitor-enter p0

    :try_start_0
    const-class v0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized update(JLjava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .param p1, "newIdx"    # J
    .param p4, "maxIdxDiff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;J)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    .local p3, "newItem":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 174
    :cond_0
    :goto_0
    :try_start_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->idx:J

    sub-long v2, p1, v2

    cmp-long v1, v2, p4

    if-lez v1, :cond_1

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    .line 179
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->idx:J

    .line 180
    iput-object p3, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized update(JLjava/lang/Object;JLorg/apache/ignite/internal/util/lang/IgniteInClosureX;)Ljava/lang/Object;
    .locals 5
    .param p1, "newIdx"    # J
    .param p4, "maxIdxDiff"    # J
    .param p6    # Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;J",
            "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;, "Lorg/apache/ignite/internal/util/GridCircularBuffer$Item<TV;>;"
    .local p3, "newItem":Ljava/lang/Object;, "TV;"
    .local p6, "c":Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteInClosureX<TV;>;"
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 201
    :cond_0
    :goto_0
    :try_start_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->idx:J

    sub-long v2, p1, v2

    cmp-long v1, v2, p4

    if-lez v1, :cond_1

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 204
    :cond_1
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->idx:J

    .line 206
    if-eqz p6, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    invoke-virtual {p6, v1}, Lorg/apache/ignite/internal/util/lang/IgniteInClosureX;->applyx(Ljava/lang/Object;)V

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    .line 211
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p3, p0, Lorg/apache/ignite/internal/util/GridCircularBuffer$Item;->item:Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    monitor-exit p0

    return-object v0
.end method
