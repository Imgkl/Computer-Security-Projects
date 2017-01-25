.class final Lorg/apache/ignite/internal/util/lang/GridFunc$44;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->coInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteOutClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CO",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private mtd:Ljava/lang/reflect/Method;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$mtdName:Ljava/lang/String;

.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$o:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$mtdName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->mtd:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 620
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$o:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$mtdName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$args:[Ljava/lang/Object;

    # invokes: Lorg/apache/ignite/internal/util/lang/GridFunc;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/lang/GridFunc;->access$000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->mtd:Ljava/lang/reflect/Method;

    .line 622
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->mtd:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 625
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->mtd:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$o:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$44;->val$args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method
