.class Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;
.super Ljava/lang/Object;
.source "IgfsProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/configuration/CacheConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;

.field final synthetic val$cacheCfgs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;->val$cacheCfgs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Lorg/apache/ignite/configuration/CacheConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;->apply(Lorg/apache/ignite/configuration/CacheConfiguration;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 2
    .param p1, "c"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessor$2;->val$cacheCfgs:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method
