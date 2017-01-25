.class Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;
.super Lorg/apache/ignite/internal/MarshallerContextAdapter;
.source "GridClientOptimizedMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientMarshallerContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/ignite/internal/MarshallerContextAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$1;

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/marshaller/optimized/GridClientOptimizedMarshaller$ClientMarshallerContext;-><init>()V

    return-void
.end method


# virtual methods
.method protected className(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected registerClassName(ILjava/lang/String;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "clsName"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
