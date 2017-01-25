.class final Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$SimpleEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsr166/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lorg/jsr166/ConcurrentLinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.WriteThroughEntry;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    .line 1941
    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1942
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1954
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;, "Lorg/jsr166/ConcurrentLinkedHashMap<TK;TV;>.WriteThroughEntry;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 1955
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1957
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractMap$SimpleEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1959
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;->this$0:Lorg/jsr166/ConcurrentLinkedHashMap;

    invoke-virtual {p0}, Lorg/jsr166/ConcurrentLinkedHashMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/jsr166/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    return-object v0
.end method
