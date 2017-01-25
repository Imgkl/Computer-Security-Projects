.class public final Lorg/jsr166/ConcurrentLinkedDeque8$Node;
.super Ljava/lang/Object;
.source "ConcurrentLinkedDeque8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedDeque8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final prevOffset:J


# instance fields
.field volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field volatile next:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field volatile prev:Lorg/jsr166/ConcurrentLinkedDeque8$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Lorg/jsr166/ConcurrentLinkedDeque8;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    .line 356
    const-class v1, Lorg/jsr166/ConcurrentLinkedDeque8$Node;

    .line 358
    .local v1, "k":Ljava/lang/Class;
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "prev"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prevOffset:J

    .line 359
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->itemOffset:J

    .line 360
    sget-object v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "next"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->nextOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->itemOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 287
    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "cmp":Ljava/lang/Object;, "TE;"
    .local p2, "val":Ljava/lang/Object;, "TE;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->itemOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "cmp":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->nextOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;Lorg/jsr166/ConcurrentLinkedDeque8$Node;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "cmp":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p2, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prevOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public item()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    iget-object v0, p0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->item:Ljava/lang/Object;

    return-object v0
.end method

.method lazySetNext(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->nextOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 310
    return-void
.end method

.method lazySetPrev(Lorg/jsr166/ConcurrentLinkedDeque8$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsr166/ConcurrentLinkedDeque8$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    .local p1, "val":Lorg/jsr166/ConcurrentLinkedDeque8$Node;, "Lorg/jsr166/ConcurrentLinkedDeque8$Node<TE;>;"
    sget-object v0, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/ConcurrentLinkedDeque8$Node;->prevOffset:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 326
    return-void
.end method
