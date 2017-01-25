.class abstract Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V
    .locals 0

    .prologue
    .line 2072
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p2, "x1"    # Lorg/jsr166/ConcurrentLinkedHashMap$1;

    .prologue
    .line 2072
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2102
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->clear()V

    .line 2103
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    const/4 v2, 0x0

    .line 2075
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 2082
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 2078
    check-cast v0, Ljava/util/Map$Entry;

    .line 2080
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsr166/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2082
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2087
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 2088
    const/4 v1, 0x0

    .line 2092
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 2090
    check-cast v0, Ljava/util/Map$Entry;

    .line 2092
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2097
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractEntrySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractEntrySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
