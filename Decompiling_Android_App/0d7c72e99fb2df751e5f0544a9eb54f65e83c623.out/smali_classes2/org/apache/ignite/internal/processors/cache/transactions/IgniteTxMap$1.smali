.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "IgniteTxMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->txMap:Ljava/util/Map;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->set:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->set:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->sealed:Z
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->empty:Ljava/lang/Boolean;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$500(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->empty:Ljava/lang/Boolean;
    invoke-static {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$502(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->empty:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$500(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->sealed:Z
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-array v1, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v1

    # setter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$402(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->access$400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)I

    move-result v0

    goto :goto_0
.end method
