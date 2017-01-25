.class public Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;
.super Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
.source "CacheInvokeEntry.java"

# interfaces
.implements Ljavax/cache/processor/MutableEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry",
        "<TK;TV;>;",
        "Ljavax/cache/processor/MutableEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final hadVal:Z

.field private oldVal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V
    .locals 1
    .param p2, "keyObj"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "valObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "TK;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "val":Ljava/lang/Object;, "TV;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 65
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->hadVal:Z

    .line 66
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 1
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "keyObj"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "valObj"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    .line 33
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 48
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->hadVal:Z

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modified()Z
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public oldVal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->oldVal:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->val:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->oldVal:Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->val:Ljava/lang/Object;

    .line 76
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->valObj:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->CREATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    if-ne v0, v1, :cond_0

    .line 79
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->NONE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->REMOVE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->val:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->oldVal:Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->val:Ljava/lang/Object;

    .line 93
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->hadVal:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->op:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    .line 94
    return-void

    .line 93
    :cond_1
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;->CREATE:Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry$Operation;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
