.class Lorg/apache/ignite/internal/processors/resource/GridResourceField;
.super Ljava/lang/Object;
.source "GridResourceField.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceField;


# instance fields
.field private final ann:Ljava/lang/annotation/Annotation;

.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->$assertionsDisabled:Z

    .line 32
    new-array v0, v1, [Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    sput-object v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->EMPTY_ARRAY:[Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "ann"    # Ljava/lang/annotation/Annotation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    invoke-static {p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceUtils;->mayRequireResources(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->field:Ljava/lang/reflect/Field;

    .line 51
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->ann:Ljava/lang/annotation/Annotation;

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->ann:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public processFieldValue()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;->ann:Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceField;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
