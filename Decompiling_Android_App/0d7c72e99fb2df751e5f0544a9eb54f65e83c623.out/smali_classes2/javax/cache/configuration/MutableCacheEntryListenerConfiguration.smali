.class public Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;
.super Ljava/lang/Object;
.source "MutableCacheEntryListenerConfiguration.java"

# interfaces
.implements Ljavax/cache/configuration/CacheEntryListenerConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x2edec8daf6L


# instance fields
.field private filterFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryEventFilter",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end field

.field private isOldValueRequired:Z

.field private isSynchronous:Z

.field private listenerFactory:Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryListener",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/cache/configuration/CacheEntryListenerConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    .local p1, "configuration":Ljavax/cache/configuration/CacheEntryListenerConfiguration;, "Ljavax/cache/configuration/CacheEntryListenerConfiguration<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->getCacheEntryListenerFactory()Ljavax/cache/configuration/Factory;

    move-result-object v0

    iput-object v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    .line 69
    invoke-interface {p1}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->getCacheEntryEventFilterFactory()Ljavax/cache/configuration/Factory;

    move-result-object v0

    iput-object v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    .line 70
    invoke-interface {p1}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->isOldValueRequired()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    .line 71
    invoke-interface {p1}, Ljavax/cache/configuration/CacheEntryListenerConfiguration;->isSynchronous()Z

    move-result v0

    iput-boolean v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljavax/cache/configuration/Factory;Ljavax/cache/configuration/Factory;ZZ)V
    .locals 0
    .param p3, "isOldValueRequired"    # Z
    .param p4, "isSynchronous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/event/CacheEntryListener",
            "<-TK;-TV;>;>;",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/event/CacheEntryEventFilter",
            "<-TK;-TV;>;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    .local p1, "listenerFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/event/CacheEntryListener<-TK;-TV;>;>;"
    .local p2, "filterFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/event/CacheEntryEventFilter<-TK;-TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    .line 88
    iput-object p2, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    .line 89
    iput-boolean p3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    .line 90
    iput-boolean p4, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 205
    goto :goto_0

    .line 207
    :cond_2
    instance-of v3, p1, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;

    if-nez v3, :cond_3

    move v1, v2

    .line 208
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 210
    check-cast v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;

    .line 211
    .local v0, "other":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<**>;"
    iget-object v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    if-nez v3, :cond_4

    .line 212
    iget-object v3, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    if-eqz v3, :cond_5

    move v1, v2

    .line 213
    goto :goto_0

    .line 215
    :cond_4
    iget-object v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    iget-object v4, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_5
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 219
    goto :goto_0

    .line 221
    :cond_6
    iget-boolean v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    iget-boolean v4, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 222
    goto :goto_0

    .line 224
    :cond_7
    iget-object v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    if-nez v3, :cond_8

    .line 225
    iget-object v3, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    if-eqz v3, :cond_0

    move v1, v2

    .line 226
    goto :goto_0

    .line 228
    :cond_8
    iget-object v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    iget-object v4, v0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 229
    goto :goto_0
.end method

.method public getCacheEntryEventFilterFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryEventFilter",
            "<-TK;-TV;>;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public getCacheEntryListenerFactory()Ljavax/cache/configuration/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryListener",
            "<-TK;-TV;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    const/16 v5, 0x4d5

    const/16 v4, 0x4cf

    const/4 v3, 0x0

    .line 186
    const/16 v0, 0x1f

    .line 187
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 188
    .local v1, "result":I
    iget-object v2, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 189
    mul-int/lit8 v6, v1, 0x1f

    iget-boolean v2, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    add-int v1, v6, v2

    .line 190
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v6, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    if-eqz v6, :cond_2

    :goto_2
    add-int v1, v2, v4

    .line 191
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 193
    return v1

    .line 188
    :cond_0
    iget-object v2, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v5

    .line 189
    goto :goto_1

    :cond_2
    move v4, v5

    .line 190
    goto :goto_2

    .line 191
    :cond_3
    iget-object v3, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isOldValueRequired()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    return v0
.end method

.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iget-boolean v0, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    return v0
.end method

.method public setCacheEntryEventFilterFactory(Ljavax/cache/configuration/Factory;)Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/event/CacheEntryEventFilter",
            "<-TK;-TV;>;>;)",
            "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    .local p1, "filterFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/event/CacheEntryEventFilter<-TK;-TV;>;>;"
    iput-object p1, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->filterFactory:Ljavax/cache/configuration/Factory;

    .line 133
    return-object p0
.end method

.method public setCacheEntryListenerFactory(Ljavax/cache/configuration/Factory;)Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/configuration/Factory",
            "<+",
            "Ljavax/cache/event/CacheEntryListener",
            "<-TK;-TV;>;>;)",
            "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    .local p1, "listenerFactory":Ljavax/cache/configuration/Factory;, "Ljavax/cache/configuration/Factory<+Ljavax/cache/event/CacheEntryListener<-TK;-TV;>;>;"
    iput-object p1, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->listenerFactory:Ljavax/cache/configuration/Factory;

    .line 111
    return-object p0
.end method

.method public setOldValueRequired(Z)Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;
    .locals 0
    .param p1, "isOldValueRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isOldValueRequired:Z

    .line 154
    return-object p0
.end method

.method public setSynchronous(Z)Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;
    .locals 0
    .param p1, "isSynchronous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;, "Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration<TK;TV;>;"
    iput-boolean p1, p0, Ljavax/cache/configuration/MutableCacheEntryListenerConfiguration;->isSynchronous:Z

    .line 177
    return-object p0
.end method
