.class final Lorg/apache/ignite/internal/util/lang/GridFunc$119;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->as(Ljava/util/concurrent/Callable;)Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 5177
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$119;->val$c:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .prologue
    .line 5180
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$119;->val$c:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5182
    :catch_0
    move-exception v0

    .line 5183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method
