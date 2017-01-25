.class Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;
.super Ljava/lang/Object;
.source "GridTaskCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskDescriptor"
.end annotation


# instance fields
.field private final err:Ljava/lang/Throwable;

.field private final finished:Z

.field private final res:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "finished"    # Z
    .param p2, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->finished:Z

    .line 542
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->res:Ljava/lang/Object;

    .line 543
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->err:Ljava/lang/Throwable;

    .line 544
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Throwable;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;

    .prologue
    .line 525
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;-><init>(ZLjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->err:Ljava/lang/Throwable;

    return-object v0
.end method

.method public finished()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->finished:Z

    return v0
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$TaskDescriptor;->res:Ljava/lang/Object;

    return-object v0
.end method
