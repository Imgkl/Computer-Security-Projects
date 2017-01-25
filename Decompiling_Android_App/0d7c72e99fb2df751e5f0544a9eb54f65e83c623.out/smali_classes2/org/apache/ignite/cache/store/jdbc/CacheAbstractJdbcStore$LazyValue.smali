.class abstract Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;
.super Ljava/lang/Object;
.source "CacheAbstractJdbcStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1646
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$1;

    .prologue
    .line 1646
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<TT;>;"
    invoke-direct {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1659
    .local p0, "this":Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;, "Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1660
    invoke-virtual {p0}, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->val:Ljava/lang/Object;

    .line 1662
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/cache/store/jdbc/CacheAbstractJdbcStore$LazyValue;->val:Ljava/lang/Object;

    return-object v0
.end method
