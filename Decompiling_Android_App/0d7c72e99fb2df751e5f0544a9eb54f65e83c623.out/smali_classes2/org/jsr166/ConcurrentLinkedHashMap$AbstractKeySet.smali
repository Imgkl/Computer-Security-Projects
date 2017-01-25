.class abstract Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V
    .locals 0

    .prologue
    .line 1987
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p2, "x1"    # Lorg/jsr166/ConcurrentLinkedHashMap$1;

    .prologue
    .line 1987
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2005
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->clear()V

    .line 2006
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1995
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2000
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1990
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractKeySet;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractKeySet;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
