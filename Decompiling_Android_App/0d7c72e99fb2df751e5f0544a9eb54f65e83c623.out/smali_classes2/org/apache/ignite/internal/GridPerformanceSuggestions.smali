.class public Lorg/apache/ignite/internal/GridPerformanceSuggestions;
.super Ljava/lang/Object;
.source "GridPerformanceSuggestions.java"


# static fields
.field private static final disabled:Z


# instance fields
.field private final perfs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final suppressed:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "IGNITE_PERFORMANCE_SUGGESTIONS_DISABLED"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->disabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-boolean v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->disabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->disabled:Z

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iput-object v1, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->suppressed:Ljava/util/Collection;

    return-void

    :cond_1
    move-object v0, v1

    .line 37
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;)V
    .locals 1
    .param p1, "sug"    # Ljava/lang/String;

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->add(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sug"    # Ljava/lang/String;
    .param p2, "suppress"    # Z

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->disabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->suppressed:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized logSuggestions(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    .locals 5
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "gridName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->disabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->suppressed:Ljava/util/Collection;

    iget-object v3, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performance suggestions for grid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_3

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (fix if possible)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 74
    const-string v2, "To disable, set -DIGNITE_PERFORMANCE_SUGGESTIONS_DISABLED=true"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->suppressed:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ^-- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 68
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 72
    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 80
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v2, ""

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->quietAndInfo(Lorg/apache/ignite/IgniteLogger;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;->perfs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/apache/ignite/internal/GridPerformanceSuggestions;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
