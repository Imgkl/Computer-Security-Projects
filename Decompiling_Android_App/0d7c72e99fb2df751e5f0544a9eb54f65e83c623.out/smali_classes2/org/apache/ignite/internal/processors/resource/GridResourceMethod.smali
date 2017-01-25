.class Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
.super Ljava/lang/Object;
.source "GridResourceMethod.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;


# instance fields
.field private final ann:Ljava/lang/annotation/Annotation;

.field private final mtd:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->$assertionsDisabled:Z

    .line 31
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    sput-object v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    return-void

    :cond_0
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "mtd"    # Ljava/lang/reflect/Method;
    .param p2, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->mtd:Ljava/lang/reflect/Method;

    .line 50
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->ann:Ljava/lang/annotation/Annotation;

    .line 51
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->ann:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;->mtd:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
