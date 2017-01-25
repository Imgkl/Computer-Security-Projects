.class public Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
.super Ljava/util/AbstractMap;
.source "IgniteTxMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private empty:Ljava/lang/Boolean;

.field private entrySet:Ljava/util/Set;
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

.field private filter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field

.field private sealed:Z

.field private size:I

.field private txMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "txMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p2, "filter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I

    .line 66
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->txMap:Ljava/util/Map;

    .line 67
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->txMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->sealed:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .prologue
    .line 31
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I

    return v0
.end method

.method static synthetic access$402(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->size:I

    return p1
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->empty:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->empty:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->get(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet:Ljava/util/Set;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->get(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->txMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 170
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v0, :cond_1

    move-object v0, v1

    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->filter:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v2, v0}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction view map should never be serialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method seal()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->sealed:Z

    .line 78
    return-object p0
.end method

.method sealed()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->sealed:Z

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction view map should never be serialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
