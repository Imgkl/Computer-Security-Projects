.class public final Lorg/apache/ignite/cache/query/ContinuousQuery;
.super Lorg/apache/ignite/cache/query/Query;
.source "ContinuousQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/cache/query/Query",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final DFLT_AUTO_UNSUBSCRIBE:Z = true

.field public static final DFLT_PAGE_SIZE:I = 0x1

.field public static final DFLT_TIME_INTERVAL:J

.field private static final serialVersionUID:J


# instance fields
.field private autoUnsubscribe:Z

.field private initQry:Lorg/apache/ignite/cache/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/query/Query",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private timeInterval:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    const/4 v2, 0x1

    .line 132
    invoke-direct {p0}, Lorg/apache/ignite/cache/query/Query;-><init>()V

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->timeInterval:J

    .line 127
    iput-boolean v2, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->autoUnsubscribe:Z

    .line 133
    invoke-virtual {p0, v2}, Lorg/apache/ignite/cache/query/ContinuousQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/ContinuousQuery;

    .line 134
    return-void
.end method


# virtual methods
.method public getInitialQuery()Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/query/Query",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->initQry:Lorg/apache/ignite/cache/query/Query;

    return-object v0
.end method

.method public getLocalListener()Ljavax/cache/event/CacheEntryUpdatedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    return-object v0
.end method

.method public getRemoteFilter()Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    return-object v0
.end method

.method public getTimeInterval()J
    .locals 2

    .prologue
    .line 244
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->timeInterval:J

    return-wide v0
.end method

.method public isAutoUnsubscribe()Z
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->autoUnsubscribe:Z

    return v0
.end method

.method public setAutoUnsubscribe(Z)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 0
    .param p1, "autoUnsubscribe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    iput-boolean p1, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->autoUnsubscribe:Z

    .line 263
    return-object p0
.end method

.method public setInitialQuery(Lorg/apache/ignite/cache/query/Query;)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/query/Query",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    .local p1, "initQry":Lorg/apache/ignite/cache/query/Query;, "Lorg/apache/ignite/cache/query/Query<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->initQry:Lorg/apache/ignite/cache/query/Query;

    .line 149
    return-object p0
.end method

.method public setLocal(Z)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 1
    .param p1, "loc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setLocal(Z)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/ContinuousQuery;

    return-object v0
.end method

.method public bridge synthetic setLocal(Z)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->setLocal(Z)Lorg/apache/ignite/cache/query/ContinuousQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLocalListener(Ljavax/cache/event/CacheEntryUpdatedListener;)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryUpdatedListener",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    .local p1, "locLsnr":Ljavax/cache/event/CacheEntryUpdatedListener;, "Ljavax/cache/event/CacheEntryUpdatedListener<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->locLsnr:Ljavax/cache/event/CacheEntryUpdatedListener;

    .line 179
    return-object p0
.end method

.method public setPageSize(I)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/cache/query/Query;->setPageSize(I)Lorg/apache/ignite/cache/query/Query;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/cache/query/ContinuousQuery;

    return-object v0
.end method

.method public bridge synthetic setPageSize(I)Lorg/apache/ignite/cache/query/Query;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/cache/query/ContinuousQuery;->setPageSize(I)Lorg/apache/ignite/cache/query/ContinuousQuery;

    move-result-object v0

    return-object v0
.end method

.method public setRemoteFilter(Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    .local p1, "rmtFilter":Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;, "Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->rmtFilter:Lorg/apache/ignite/cache/CacheEntryEventSerializableFilter;

    .line 204
    return-object p0
.end method

.method public setTimeInterval(J)Lorg/apache/ignite/cache/query/ContinuousQuery;
    .locals 3
    .param p1, "timeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/cache/query/ContinuousQuery",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lorg/apache/ignite/cache/query/ContinuousQuery;, "Lorg/apache/ignite/cache/query/ContinuousQuery<TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time interval can\'t be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iput-wide p1, p0, Lorg/apache/ignite/cache/query/ContinuousQuery;->timeInterval:J

    .line 235
    return-object p0
.end method
