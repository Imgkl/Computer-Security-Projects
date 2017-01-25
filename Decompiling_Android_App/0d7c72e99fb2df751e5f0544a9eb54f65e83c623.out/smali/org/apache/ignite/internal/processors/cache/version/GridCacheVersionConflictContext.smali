.class public Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
.super Ljava/lang/Object;
.source "GridCacheVersionConflictContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private manualResolve:Z

.field private mergeVal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final newEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final oldEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

.field private ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    .local p1, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry<TK;TV;>;"
    .local p2, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry<TK;TV;>;"
    const-wide/16 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;->ttl()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;->ttl()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_3
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->oldEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    .line 61
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->newEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    .line 64
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->useNew()V

    .line 65
    return-void
.end method


# virtual methods
.method public expireTime()J
    .locals 2

    .prologue
    .line 173
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseNew()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->newEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;->expireTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isUseOld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->oldEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;->expireTime()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isManualResolve()Z
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->manualResolve:Z

    return v0
.end method

.method public isMerge()Z
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->MERGE:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseNew()Z
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->USE_NEW:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUseOld()Z
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->USE_OLD:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manualResolve()V
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->manualResolve:Z

    .line 146
    return-void
.end method

.method public merge(Ljava/lang/Object;J)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    .local p1, "mergeVal":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTL must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->MERGE:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    .line 116
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeVal:Ljava/lang/Object;

    .line 117
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl:J

    .line 118
    return-void
.end method

.method public mergeValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeVal:Ljava/lang/Object;

    return-object v0
.end method

.method public newEntry()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->newEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    return-object v0
.end method

.method public oldEntry()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->oldEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->MERGE:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    if-ne v0, v1, :cond_0

    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    const-string v1, "mergeValue"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeVal:Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl:J

    return-wide v0
.end method

.method public useNew()V
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->USE_NEW:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->newEntry:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;->ttl()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->ttl:J

    .line 99
    return-void
.end method

.method public useOld()V
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<TK;TV;>;"
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;->USE_OLD:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->state:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext$State;

    .line 90
    return-void
.end method
