.class abstract Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method private constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V
    .locals 0

    .prologue
    .line 2032
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractValues;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Lorg/jsr166/ConcurrentLinkedHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jsr166/ConcurrentLinkedHashMap;
    .param p2, "x1"    # Lorg/jsr166/ConcurrentLinkedHashMap$1;

    .prologue
    .line 2032
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractValues;"
    invoke-direct {p0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;-><init>(Lorg/jsr166/ConcurrentLinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2045
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractValues;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->clear()V

    .line 2046
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2040
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractValues;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2035
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.AbstractValues;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedHashMap$AbstractValues;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lorg/jsr166/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
