.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;
.super Ljava/lang/Object;
.source "OptimizedObjectStreamRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamHolder"
.end annotation


# instance fields
.field private final in:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

.field private inAcquireCnt:I

.field private final out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

.field private outAcquireCnt:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->createOut()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    .line 156
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->createIn()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->in:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$1;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;-><init>()V

    return-void
.end method

.method private createIn()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .locals 3

    .prologue
    .line 217
    :try_start_0
    new-instance v1, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    new-instance v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataInput;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;-><init>(Lorg/apache/ignite/internal/util/io/GridDataInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to create object input stream."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createOut()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .locals 4

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    new-instance v2, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/io/GridUnsafeDataOutput;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;-><init>(Lorg/apache/ignite/internal/util/io/GridDataOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to create object output stream."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method acquireIn()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->inAcquireCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->inAcquireCnt:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->createIn()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->in:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    goto :goto_0
.end method

.method acquireOut()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->outAcquireCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->outAcquireCnt:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->createOut()Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    goto :goto_0
.end method

.method releaseIn()V
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->inAcquireCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->inAcquireCnt:I

    .line 194
    return-void
.end method

.method releaseOut()V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->outAcquireCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectStreamRegistry$StreamHolder;->outAcquireCnt:I

    .line 187
    return-void
.end method
