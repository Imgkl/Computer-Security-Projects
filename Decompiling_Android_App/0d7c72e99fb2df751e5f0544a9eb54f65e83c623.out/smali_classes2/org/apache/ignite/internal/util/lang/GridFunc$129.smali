.class final Lorg/apache/ignite/internal/util/lang/GridFunc$129;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->forMap(Ljava/util/Map;Ljava/util/concurrent/Callable;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/concurrent/Callable;

.field final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 5369
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$129;->val$m:Ljava/util/Map;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$129;->val$c:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 5372
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$129;->val$m:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$129;->val$c:Ljava/util/concurrent/Callable;

    invoke-static {v0, p1, v1}, Lorg/apache/ignite/internal/util/lang/GridFunc;->returnIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
