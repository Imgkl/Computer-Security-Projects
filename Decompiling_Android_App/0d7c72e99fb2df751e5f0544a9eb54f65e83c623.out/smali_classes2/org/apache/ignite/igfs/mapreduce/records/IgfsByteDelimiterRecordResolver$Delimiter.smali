.class Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;
.super Ljava/lang/Object;
.source "IgfsByteDelimiterRecordResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delimiter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final end:J

.field private final start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(JJ)V
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    sget-boolean v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    cmp-long v0, p3, v2

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_1
    iput-wide p1, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->start:J

    .line 324
    iput-wide p3, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->end:J

    .line 325
    return-void
.end method

.method synthetic constructor <init>(JJLorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$1;

    .prologue
    .line 307
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->end:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsByteDelimiterRecordResolver$Delimiter;->start:J

    return-wide v0
.end method
