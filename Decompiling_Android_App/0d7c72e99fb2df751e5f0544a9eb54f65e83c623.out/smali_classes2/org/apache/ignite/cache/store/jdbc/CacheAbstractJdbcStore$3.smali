.class Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;
.super Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;
.source "CacheAbstractJdbcStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;->deleteAll(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1138
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.3;"
    iput-object p1, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;->this$0:Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;

    iput-object p2, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;->val$keys:Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;-><init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1138
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.3;"
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;->create()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public create()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1140
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore.3;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$3;->val$keys:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
