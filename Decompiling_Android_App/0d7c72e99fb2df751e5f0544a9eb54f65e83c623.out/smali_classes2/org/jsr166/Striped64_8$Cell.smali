.class final Lorg/jsr166/Striped64_8$Cell;
.super Ljava/lang/Object;
.source "Striped64_8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/Striped64_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field volatile p0:J

.field volatile p1:J

.field volatile p2:J

.field volatile p3:J

.field volatile p4:J

.field volatile p5:J

.field volatile p6:J

.field volatile q0:J

.field volatile q1:J

.field volatile q2:J

.field volatile q3:J

.field volatile q4:J

.field volatile q5:J

.field volatile q6:J

.field volatile value:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    # invokes: Lorg/jsr166/Striped64_8;->getUnsafe()Lsun/misc/Unsafe;
    invoke-static {}, Lorg/jsr166/Striped64_8;->access$000()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lorg/jsr166/Striped64_8$Cell;->UNSAFE:Lsun/misc/Unsafe;

    .line 110
    const-class v0, Lorg/jsr166/Striped64_8$Cell;

    .line 111
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/jsr166/Striped64_8$Cell;->UNSAFE:Lsun/misc/Unsafe;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lorg/jsr166/Striped64_8$Cell;->valueOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jsr166/Striped64_8$Cell;->value:J

    return-void
.end method


# virtual methods
.method final cas(JJ)Z
    .locals 9
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .prologue
    .line 101
    sget-object v0, Lorg/jsr166/Striped64_8$Cell;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jsr166/Striped64_8$Cell;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method