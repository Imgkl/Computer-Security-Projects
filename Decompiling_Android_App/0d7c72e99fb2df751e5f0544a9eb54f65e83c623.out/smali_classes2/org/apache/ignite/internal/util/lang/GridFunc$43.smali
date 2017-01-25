.class final Lorg/apache/ignite/internal/util/lang/GridFunc$43;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->ciInvoke(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteInClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mtd:Ljava/lang/reflect/Method;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$mtdName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->val$mtdName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->mtd:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->val$mtdName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->val$args:[Ljava/lang/Object;

    # invokes: Lorg/apache/ignite/internal/util/lang/GridFunc;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->access$000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->mtd:Ljava/lang/reflect/Method;

    .line 584
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->mtd:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 587
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->mtd:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$43;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method
