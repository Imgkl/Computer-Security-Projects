.class final Lorg/apache/ignite/stream/StreamTransformer$1;
.super Lorg/apache/ignite/stream/StreamTransformer;
.source "StreamTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/stream/StreamTransformer;->from(Lorg/apache/ignite/cache/CacheEntryProcessor;)Lorg/apache/ignite/stream/StreamTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/stream/StreamTransformer",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ep:Lorg/apache/ignite/cache/CacheEntryProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/cache/CacheEntryProcessor;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/ignite/stream/StreamTransformer$1;->val$ep:Lorg/apache/ignite/cache/CacheEntryProcessor;

    invoke-direct {p0}, Lorg/apache/ignite/stream/StreamTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/processor/MutableEntry",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/processor/EntryProcessorException;
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "entry":Ljavax/cache/processor/MutableEntry;, "Ljavax/cache/processor/MutableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/stream/StreamTransformer$1;->val$ep:Lorg/apache/ignite/cache/CacheEntryProcessor;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/cache/CacheEntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
