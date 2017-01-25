.class abstract Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;
.super Ljava/lang/Object;
.source "GridQueryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/query/GridQueryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Property"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$1;

    .prologue
    .line 1288
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/query/GridQueryProcessor$Property;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract value(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
