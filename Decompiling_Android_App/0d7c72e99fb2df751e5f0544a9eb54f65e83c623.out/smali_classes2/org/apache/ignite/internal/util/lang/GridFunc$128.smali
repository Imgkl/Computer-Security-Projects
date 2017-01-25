.class final Lorg/apache/ignite/internal/util/lang/GridFunc$128;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->forMap(Ljava/util/Map;)Lorg/apache/ignite/lang/IgniteClosure;
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
.field final synthetic val$m:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 5345
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$128;->val$m:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 5347
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$128;->val$m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
