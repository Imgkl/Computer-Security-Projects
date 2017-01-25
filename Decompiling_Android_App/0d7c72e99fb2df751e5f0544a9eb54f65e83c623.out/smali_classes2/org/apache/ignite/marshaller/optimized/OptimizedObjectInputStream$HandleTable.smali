.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "OptimizedObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation


# instance fields
.field private entries:[Ljava/lang/Object;

.field private size:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initCap"    # I

    .prologue
    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 958
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    .prologue
    .line 944
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    return-object v0
.end method

.method private grow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1009
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v2, 0x1

    .line 1011
    .local v0, "newCap":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 1013
    .local v1, "newEntries":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 1016
    return-void
.end method


# virtual methods
.method assign(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 968
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 969
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->grow()V

    .line 971
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    aput-object p1, v0, v1

    .line 973
    iget v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    return v0
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1000
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1002
    iput v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->size:I

    .line 1003
    return-void
.end method

.method lookup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 983
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 984
    return-void
.end method
