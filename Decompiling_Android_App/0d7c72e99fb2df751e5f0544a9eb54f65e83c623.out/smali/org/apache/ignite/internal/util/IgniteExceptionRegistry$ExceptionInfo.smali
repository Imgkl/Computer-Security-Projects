.class public Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;
.super Ljava/lang/Object;
.source "IgniteExceptionRegistry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/IgniteExceptionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final error:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private final order:J

.field private final threadId:J

.field private final threadName:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(JLjava/lang/Throwable;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 1
    .param p1, "order"    # J
    .param p3, "error"    # Ljava/lang/Throwable;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "threadId"    # J
    .param p7, "threadName"    # Ljava/lang/String;
    .param p8, "time"    # J

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-wide p1, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->order:J

    .line 189
    iput-object p3, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->error:Ljava/lang/Throwable;

    .line 190
    iput-wide p5, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadId:J

    .line 191
    iput-object p7, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadName:Ljava/lang/String;

    .line 192
    iput-wide p8, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->time:J

    .line 193
    iput-object p4, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->msg:Ljava/lang/String;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->order:J

    return-wide v0
.end method


# virtual methods
.method public error()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public order()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->order:J

    return-wide v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadId:J

    return-wide v0
.end method

.method public threadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public time()J
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-class v0, Lorg/apache/ignite/internal/util/IgniteExceptionRegistry$ExceptionInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
